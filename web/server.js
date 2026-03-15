const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');
const OpenCC = require('opencc-js');
const path = require('path');
require('dotenv').config();

const app = express();
const PORT = 3002;

// Initialize OpenCC converter (Simplified to Traditional)
const converter = OpenCC.Converter({ from: 'cn', to: 'cn' });


// Middleware
app.use(cors());
app.use(express.json());

// Serve static files from the React app
app.use(express.static(path.join(__dirname, 'public')));

// Serve static files from the update directory
app.use('/update', express.static(path.join(__dirname, 'update')));


// Database configuration
const dbConfig = {
  host: '127.0.0.1',
  port: 3308,
  user: 'xmflswood',
  password: '774898896aA',
  database: 'db363',
  charset: 'utf8mb4',
  connectTimeout: 10000,
  acquireTimeout: 10000,
  timeout: 10000,
  // Enable connection pool
  connectionLimit: 10,
  queueLimit: 0
};

// Database connection pool
let pool;

// Initialize database connection
async function initializeDB() {
  try {
    pool = mysql.createPool(dbConfig);
    // Test connection
    const connection = await pool.getConnection();
    await connection.ping();
    connection.release();
    console.log('Database connected successfully');
  } catch (error) {
    console.error('Database connection failed:', error.message);
  }
}

// Armor search endpoint
app.get('/api/armors', async (req, res) => {
  try {
    const { keyword = '', limit = 100, offset = 0 } = req.query;

    if (!keyword) {
      return res.status(400).json({ error: 'Keyword is required' });
    }

    // Convert simplified to traditional
    const convertedKeyword = converter(keyword);

    const connection = await pool.getConnection();

    // Check if keyword is a number (ID search)
    const isIdSearch = !isNaN(keyword) && keyword.trim() !== '';
    
    let query, countQuery, params, countParams;
    
    if (isIdSearch) {
      query = `
        SELECT item_id, name, type, material, weight,
               ac, safenchant, add_str, add_con, add_dex, add_int, add_wis, add_cha,
               add_hp, add_mp, add_hpr, add_mpr, add_sp,
               use_royal, use_knight, use_mage, use_elf, use_darkelf,
               use_dragonknight, use_illusionist, min_lvl, max_lvl,
               m_def, haste_item, damage_reduction, weight_reduction,
               hit_modifier, dmg_modifier, bow_hit_modifier, bow_dmg_modifier,
               bless, trade, cant_delete,
               defense_water, defense_wind, defense_fire, defense_earth,
               regist_stun, regist_stone, regist_sleep, regist_freeze,
               regist_sustain, regist_blind
        FROM armor
        WHERE item_id = ?
        ORDER BY item_id ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM armor WHERE item_id = ?`;
      params = [parseInt(keyword), parseInt(limit), parseInt(offset)];
      countParams = [parseInt(keyword)];
    } else {
      query = `
        SELECT item_id, name, type, material, weight,
               ac, safenchant, add_str, add_con, add_dex, add_int, add_wis, add_cha,
               add_hp, add_mp, add_hpr, add_mpr, add_sp,
               use_royal, use_knight, use_mage, use_elf, use_darkelf,
               use_dragonknight, use_illusionist, min_lvl, max_lvl,
               m_def, haste_item, damage_reduction, weight_reduction,
               hit_modifier, dmg_modifier, bow_hit_modifier, bow_dmg_modifier,
               bless, trade, cant_delete,
               defense_water, defense_wind, defense_fire, defense_earth,
               regist_stun, regist_stone, regist_sleep, regist_freeze,
               regist_sustain, regist_blind
        FROM armor
        WHERE name LIKE ?
        ORDER BY item_id ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM armor WHERE name LIKE ?`;
      const searchPattern = `%${convertedKeyword}%`;
      params = [searchPattern, parseInt(limit), parseInt(offset)];
      countParams = [searchPattern];
    }

    const [results] = await connection.execute(query, params);
    const [countResult] = await connection.execute(countQuery, countParams);

    connection.release();

    // Format results
    const formattedResults = results.map(armor => ({
      ...armor,
      armorType: getArmorType(armor.type),
      materialType: getMaterialType(armor.material),
      attributes: getAttributes(armor),
      classes: getClasses(armor)
    }));

    res.json({
      success: true,
      data: formattedResults,
      total: countResult[0].total,
      keyword
    });

  } catch (error) {
    console.error('Armor search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Weapon search endpoint
app.get('/api/weapons', async (req, res) => {
  try {
    const { keyword = '', limit = 100, offset = 0 } = req.query;

    if (!keyword) {
      return res.status(400).json({ error: 'Keyword is required' });
    }

    // Convert simplified to traditional
    const convertedKeyword = converter(keyword);

    const connection = await pool.getConnection();

    // Check if keyword is a number (ID search)
    const isIdSearch = !isNaN(keyword) && keyword.trim() !== '';
    
    let query, countQuery, params, countParams;
    
    if (isIdSearch) {
      query = `
        SELECT item_id, name, type, material, weight,
               dmg_small, dmg_large, \`range\`, safenchant,
               add_str, add_con, add_dex, add_int, add_wis, add_cha,
               add_hp, add_mp, add_hpr, add_mpr, add_sp,
               use_royal, use_knight, use_mage, use_elf, use_darkelf,
               use_dragonknight, use_illusionist,
               hitmodifier, dmgmodifier, double_dmg_chance, magicdmgmodifier,
               canbedmg, min_lvl, bless
        FROM weapon
        WHERE item_id = ?
        ORDER BY item_id ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM weapon WHERE item_id = ?`;
      params = [parseInt(keyword), parseInt(limit), parseInt(offset)];
      countParams = [parseInt(keyword)];
    } else {
      query = `
        SELECT item_id, name, type, material, weight,
               dmg_small, dmg_large, \`range\`, safenchant,
               add_str, add_con, add_dex, add_int, add_wis, add_cha,
               add_hp, add_mp, add_hpr, add_mpr, add_sp,
               use_royal, use_knight, use_mage, use_elf, use_darkelf,
               use_dragonknight, use_illusionist,
               hitmodifier, dmgmodifier, double_dmg_chance, magicdmgmodifier,
               canbedmg, min_lvl, bless
        FROM weapon
        WHERE name LIKE ?
        ORDER BY item_id ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM weapon WHERE name LIKE ?`;
      const searchPattern = `%${convertedKeyword}%`;
      params = [searchPattern, parseInt(limit), parseInt(offset)];
      countParams = [searchPattern];
    }

    const [results] = await connection.execute(query, params);
    const [countResult] = await connection.execute(countQuery, countParams);


    connection.release();

    // Format results
    const formattedResults = results.map(weapon => ({
      ...weapon,
      name: formatItemName(weapon.name, weapon.bless),
      weaponType: getWeaponType(weapon.type),
      materialType: getMaterialType(weapon.material),
      attributes: getAttributes(weapon),
      classes: getClasses(weapon)
    }));


    res.json({
      success: true,
      data: formattedResults,
      total: countResult[0].total,
      keyword
    });

  } catch (error) {
    console.error('Weapon search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Monster search endpoint
app.get('/api/monsters', async (req, res) => {
  try {
    const { keyword = '', limit = 100, offset = 0 } = req.query;

    if (!keyword) {
      return res.status(400).json({ error: 'Keyword is required' });
    }

    // Convert simplified to traditional
    const convertedKeyword = converter(keyword);

    const connection = await pool.getConnection();

    // Check if keyword is a number (ID search)
    const isIdSearch = !isNaN(keyword) && keyword.trim() !== '';
    
    let query, countQuery, params, countParams;
    
    if (isIdSearch) {
      query = `
        SELECT npcid, name, nameid, note, impl, gfxid, lvl, hp, mp, ac,
               str, con, dex, wis, intel, mr, exp, lawful, size, weakAttr,
               ranged, tamable, passispeed, atkspeed,
               atk_magic_speed, sub_magic_speed, undead, poison_atk,
               paralysis_atk, agro, agrososc, agrocoi, family, agrofamily,
               agrogfxid1, agrogfxid2, picupitem, digestitem, bravespeed,
               hprinterval, hpr, mprinterval, mpr, teleport, randomlevel,
               randomhp, randommp, randomac, randomexp, randomlawful,
               damage_reduction, hard, doppel, IsTU, IsErase, bowActId,
               karma, transform_id, transform_gfxid, light_size
        FROM npc
        WHERE npcid = ?
        ORDER BY npcid ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM npc WHERE npcid = ?`;
      params = [parseInt(keyword), parseInt(limit), parseInt(offset)];
      countParams = [parseInt(keyword)];
    } else {
      query = `
        SELECT npcid, name, nameid, note, impl, gfxid, lvl, hp, mp, ac,
               str, con, dex, wis, intel, mr, exp, lawful, size, weakAttr,
               ranged, tamable, passispeed, atkspeed,
               atk_magic_speed, sub_magic_speed, undead, poison_atk,
               paralysis_atk, agro, agrososc, agrocoi, family, agrofamily,
               agrogfxid1, agrogfxid2, picupitem, digestitem, bravespeed,
               hprinterval, hpr, mprinterval, mpr, teleport, randomlevel,
               randomhp, randommp, randomac, randomexp, randomlawful,
               damage_reduction, hard, doppel, IsTU, IsErase, bowActId,
               karma, transform_id, transform_gfxid, light_size
        FROM npc
        WHERE name LIKE ?
        ORDER BY npcid ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM npc WHERE name LIKE ?`;
      const searchPattern = `%${convertedKeyword}%`;
      params = [searchPattern, parseInt(limit), parseInt(offset)];
      countParams = [searchPattern];
    }

    const [results] = await connection.execute(query, params);
    const [countResult] = await connection.execute(countQuery, countParams);

    connection.release();

    res.json({
      success: true,
      data: results,
      total: countResult[0].total,
      keyword
    });

  } catch (error) {
    console.error('Monster search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Droplist search endpoints
app.get('/api/droplist/by-mob', async (req, res) => {
  try {
    const { mobId, limit = 100 } = req.query;

    if (!mobId) {
      return res.status(400).json({ error: 'Monster ID is required' });
    }

    const connection = await pool.getConnection();

    const query = `
      SELECT
        d.mobId,
        d.itemId,
        d.min,
        d.max,
        d.chance,
        n.name as monster_name,
        COALESCE(i.name, w.name, a.name) as item_name,
        COALESCE(i.item_type, CONCAT('武器-', w.type), CONCAT('护甲-', a.type)) as item_type,
        COALESCE(i.bless, w.bless, a.bless) as item_bless,
        CASE
          WHEN i.item_id IS NOT NULL THEN 'etcitem'
          WHEN w.item_id IS NOT NULL THEN 'weapon'
          WHEN a.item_id IS NOT NULL THEN 'armor'
          ELSE 'unknown'
        END as item_source
      FROM droplist d
      LEFT JOIN npc n ON d.mobId = n.npcid
      LEFT JOIN etcitem i ON d.itemId = i.item_id
      LEFT JOIN weapon w ON d.itemId = w.item_id
      LEFT JOIN armor a ON d.itemId = a.item_id
      WHERE d.mobId = ?
      ORDER BY d.chance DESC
      LIMIT ?
    `;

    const [results] = await connection.execute(query, [mobId, parseInt(limit)]);

    connection.release();

    const formattedResults = results.map(drop => ({
      ...drop,
      item_name: formatItemName(drop.item_name, drop.item_bless)
    }));

    res.json({
      success: true,
      data: formattedResults
    });

  } catch (error) {
    console.error('Droplist search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.get('/api/droplist/by-item', async (req, res) => {
  try {
    const { itemId, limit = 100 } = req.query;

    if (!itemId) {
      return res.status(400).json({ error: 'Item ID is required' });
    }

    const connection = await pool.getConnection();

    const query = `
      SELECT
        d.mobId,
        d.itemId,
        d.min,
        d.max,
        d.chance,
        n.name as monster_name,
        COALESCE(i.name, w.name, a.name) as item_name,
        COALESCE(i.item_type, CONCAT('武器-', w.type), CONCAT('护甲-', a.type)) as item_type,
        COALESCE(i.bless, w.bless, a.bless) as item_bless,
        CASE
          WHEN i.item_id IS NOT NULL THEN 'etcitem'
          WHEN w.item_id IS NOT NULL THEN 'weapon'
          WHEN a.item_id IS NOT NULL THEN 'armor'
          ELSE 'unknown'
        END as item_source
      FROM droplist d
      LEFT JOIN npc n ON d.mobId = n.npcid
      LEFT JOIN etcitem i ON d.itemId = i.item_id
      LEFT JOIN weapon w ON d.itemId = w.item_id
      LEFT JOIN armor a ON d.itemId = a.item_id
      WHERE d.itemId = ?
      ORDER BY d.chance DESC
      LIMIT ?
    `;

    const [results] = await connection.execute(query, [itemId, parseInt(limit)]);

    connection.release();

    const formattedResults = results.map(drop => ({
      ...drop,
      item_name: formatItemName(drop.item_name, drop.item_bless)
    }));

    res.json({
      success: true,
      data: formattedResults
    });

  } catch (error) {
    console.error('Droplist search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.get('/api/droplist/by-item-name', async (req, res) => {
  try {
    const { keyword = '', limit = 20, offset = 0 } = req.query;

    if (!keyword) {
      return res.status(400).json({ error: 'Keyword is required' });
    }

    // Convert simplified to traditional
    const convertedKeyword = converter(keyword);

    const connection = await pool.getConnection();

    // 先获取总数
    const countQuery = `
      SELECT COUNT(*) as total
      FROM droplist d
      WHERE d.itemId IN (
        SELECT item_id FROM etcitem WHERE name LIKE ?
        UNION
        SELECT item_id FROM weapon WHERE name LIKE ?
        UNION
        SELECT item_id FROM armor WHERE name LIKE ?
      )
    `;

    const searchPattern = `%${convertedKeyword}%`;
    const [countResult] = await connection.execute(countQuery, [searchPattern, searchPattern, searchPattern]);

    const query = `
      SELECT
        d.mobId,
        d.itemId,
        d.min,
        d.max,
        d.chance,
        n.name as monster_name,
        COALESCE(i.name, w.name, a.name) as item_name,
        COALESCE(i.item_type, CONCAT('武器-', w.type), CONCAT('护甲-', a.type)) as item_type,
        COALESCE(i.bless, w.bless, a.bless) as item_bless,
        CASE
          WHEN i.item_id IS NOT NULL THEN 'etcitem'
          WHEN w.item_id IS NOT NULL THEN 'weapon'
          WHEN a.item_id IS NOT NULL THEN 'armor'
          ELSE 'unknown'
        END as item_source
      FROM droplist d
      LEFT JOIN npc n ON d.mobId = n.npcid
      LEFT JOIN etcitem i ON d.itemId = i.item_id
      LEFT JOIN weapon w ON d.itemId = w.item_id
      LEFT JOIN armor a ON d.itemId = a.item_id
      WHERE d.itemId IN (
        SELECT item_id FROM etcitem WHERE name LIKE ?
        UNION
        SELECT item_id FROM weapon WHERE name LIKE ?
        UNION
        SELECT item_id FROM armor WHERE name LIKE ?
      )
      ORDER BY d.chance DESC
      LIMIT ? OFFSET ?
    `;

    const [results] = await connection.execute(query, [searchPattern, searchPattern, searchPattern, parseInt(limit), parseInt(offset)]);


    connection.release();

    const formattedResults = results.map(drop => ({
      ...drop,
      item_name: formatItemName(drop.item_name, drop.item_bless)
    }));

    res.json({
      success: true,
      data: formattedResults,
      total: countResult[0].total,
      keyword
    });

  } catch (error) {
    console.error('Droplist search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Etcitem search endpoint
app.get('/api/etcitems', async (req, res) => {
  try {
    const { keyword = '', limit = 100, offset = 0 } = req.query;

    if (!keyword) {
      return res.status(400).json({ error: 'Keyword is required' });
    }

    // Convert simplified to traditional
    const convertedKeyword = converter(keyword);

    const connection = await pool.getConnection();

    // Check if keyword is a number (ID search)
    const isIdSearch = !isNaN(keyword) && keyword.trim() !== '';
    
    let query, countQuery, params, countParams;
    
    if (isIdSearch) {
      query = `
        SELECT item_id, name, classname, name_id,
               item_type, use_type, material, weight, invgfx, grdgfx,
               itemdesc_id, stackable, max_charge_count, dmg_small,
               dmg_large, min_lvl, max_lvl, bless,
               trade, cant_delete, delay_id, delay_time,
               delay_effect, food_volume, save_at_once
        FROM etcitem
        WHERE item_id = ?
        ORDER BY item_id ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM etcitem WHERE item_id = ?`;
      params = [parseInt(keyword), parseInt(limit), parseInt(offset)];
      countParams = [parseInt(keyword)];
    } else {
      query = `
        SELECT item_id, name, classname, name_id,
               item_type, use_type, material, weight, invgfx, grdgfx,
               itemdesc_id, stackable, max_charge_count, dmg_small,
               dmg_large, min_lvl, max_lvl, bless,
               trade, cant_delete, delay_id, delay_time,
               delay_effect, food_volume, save_at_once
        FROM etcitem
        WHERE name LIKE ?
        ORDER BY item_id ASC
        LIMIT ? OFFSET ?
      `;
      countQuery = `SELECT COUNT(*) as total FROM etcitem WHERE name LIKE ?`;
      const searchPattern = `%${convertedKeyword}%`;
      params = [searchPattern, parseInt(limit), parseInt(offset)];
      countParams = [searchPattern];
    }

    const [results] = await connection.execute(query, params);
    const [countResult] = await connection.execute(countQuery, countParams);

    connection.release();

    const formattedResults = results.map(item => ({
      ...item,
      name: formatItemName(item.name, item.bless)
    }));

    res.json({
      success: true,
      data: formattedResults,
      total: countResult[0].total,
      keyword
    });

  } catch (error) {
    console.error('Etcitem search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Helper functions
function formatItemName(name, bless) {
  if (bless === 0) return `${name}(祝福)`;
  if (bless === 2) return `${name}(诅咒)`;
  return name;
}

function getWeaponType(typeId) {

  const types = {
    '1': '剑', '2': '匕首', '3': '双手剑', '4': '弓', '5': '矛', '6': '锤/钝器',
    '7': '法杖', '8': '飞刀/投掷', '9': '箭', '10': '指虎', '11': '爪',
    '12': '刀/道刀', '13': '单手弓', '14': '单手矛', '15': '双手锤',
    '16': '双手法杖', '17': '奇灵刀', '18': '双刀', '19': '双手奇灵刀'
  };
  return types[typeId] || '未知';
}

function getArmorType(typeId) {
  const types = {
    'helm': '头盔',
    'armor': '铠甲',
    'gloves': '手套',
    'boots': '靴子',
    'shield': '盾牌',
    'cloak': '披风'
  };
  return types[typeId] || '未知';
}

function getMaterialType(materialId) {
  const materials = {
    '0': '未知', '1': '青铜', '2': '钢铁', '3': '精钢', '4': '银', '5': '金',
    '6': '白金', '7': '秘银', '8': '龙鳞', '9': '魔法', '10': '暗黑',
    '11': '神圣', '12': '远古', '13': '龙牙', '14': '水晶', '15': '翡翠'
  };
  return materials[materialId] || '未知';
}

function getAttributes(weapon) {
  const attrs = [];
  if (weapon.add_str > 0) attrs.push(`力量+${weapon.add_str}`);
  if (weapon.add_con > 0) attrs.push(`体质+${weapon.add_con}`);
  if (weapon.add_dex > 0) attrs.push(`敏捷+${weapon.add_dex}`);
  if (weapon.add_int > 0) attrs.push(`智力+${weapon.add_int}`);
  if (weapon.add_wis > 0) attrs.push(`感知+${weapon.add_wis}`);
  if (weapon.add_cha > 0) attrs.push(`魅力+${weapon.add_cha}`);
  if (weapon.add_hp > 0) attrs.push(`HP+${weapon.add_hp}`);
  if (weapon.add_mp > 0) attrs.push(`MP+${weapon.add_mp}`);
  if (weapon.add_hpr > 0) attrs.push(`HP回复+${weapon.add_hpr}`);
  if (weapon.add_mpr > 0) attrs.push(`MP回复+${weapon.add_mpr}`);
  if (weapon.add_sp > 0) attrs.push(`SP+${weapon.add_sp}`);
  return attrs;
}

function getClasses(weapon) {
  const classes = [];
  if (weapon.use_royal) classes.push("皇家");
  if (weapon.use_knight) classes.push("骑士");
  if (weapon.use_mage) classes.push("法师");
  if (weapon.use_elf) classes.push("精灵");
  if (weapon.use_darkelf) classes.push("黑暗精灵");
  if (weapon.use_dragonknight) classes.push("龙骑士");
  if (weapon.use_illusionist) classes.push("幻术师");
  return classes.length > 0 ? classes : ["所有职业"];
}

// Enhanced droplist search with item names
app.get('/api/droplist/by-mob-detail', async (req, res) => {
  try {
    const { mobId, limit = 100 } = req.query;

    if (!mobId) {
      return res.status(400).json({ error: 'Monster ID is required' });
    }

    const connection = await pool.getConnection();

    const query = `
      SELECT
        d.mobId,
        d.itemId,
        d.min,
        d.max,
        d.chance,
        n.name as monster_name,
        COALESCE(i.name, w.name, a.name) as item_name,
        COALESCE(i.item_type, CONCAT('武器-', w.type), CONCAT('护甲-', a.type)) as item_type,
        COALESCE(i.bless, w.bless, a.bless) as item_bless,
        CASE
          WHEN i.item_id IS NOT NULL THEN 'etcitem'
          WHEN w.item_id IS NOT NULL THEN 'weapon'
          WHEN a.item_id IS NOT NULL THEN 'armor'
          ELSE 'unknown'
        END as item_source
      FROM droplist d
      LEFT JOIN npc n ON d.mobId = n.npcid
      LEFT JOIN etcitem i ON d.itemId = i.item_id
      LEFT JOIN weapon w ON d.itemId = w.item_id
      LEFT JOIN armor a ON d.itemId = a.item_id
      WHERE d.mobId = ?
      ORDER BY d.chance DESC
      LIMIT ?
    `;

    const [results] = await connection.execute(query, [mobId, parseInt(limit)]);

    connection.release();

    const formattedResults = results.map(drop => ({
      ...drop,
      item_name: formatItemName(drop.item_name, drop.item_bless)
    }));

    res.json({
      success: true,
      data: formattedResults
    });

  } catch (error) {

    console.error('Droplist search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Enhanced droplist search by item with names
app.get('/api/droplist/by-item-detail', async (req, res) => {
  try {
    const { itemId, limit = 100 } = req.query;

    if (!itemId) {
      return res.status(400).json({ error: 'Item ID is required' });
    }

    const connection = await pool.getConnection();

    const query = `
      SELECT
        d.mobId,
        d.itemId,
        d.min,
        d.max,
        d.chance,
        n.name as monster_name,
        COALESCE(i.name, w.name, a.name) as item_name,
        COALESCE(i.item_type, CONCAT('武器-', w.type), CONCAT('护甲-', a.type)) as item_type,
        COALESCE(i.bless, w.bless, a.bless) as item_bless,
        CASE
          WHEN i.item_id IS NOT NULL THEN 'etcitem'
          WHEN w.item_id IS NOT NULL THEN 'weapon'
          WHEN a.item_id IS NOT NULL THEN 'armor'
          ELSE 'unknown'
        END as item_source
      FROM droplist d
      LEFT JOIN npc n ON d.mobId = n.npcid
      LEFT JOIN etcitem i ON d.itemId = i.item_id
      LEFT JOIN weapon w ON d.itemId = w.item_id
      LEFT JOIN armor a ON d.itemId = a.item_id
      WHERE d.itemId = ?
      ORDER BY d.chance DESC
      LIMIT ?
    `;

    const [results] = await connection.execute(query, [itemId, parseInt(limit)]);

    connection.release();

    const formattedResults = results.map(drop => ({
      ...drop,
      item_name: formatItemName(drop.item_name, drop.item_bless)
    }));

    res.json({
      success: true,
      data: formattedResults
    });


  } catch (error) {
    console.error('Droplist search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Enhanced droplist search by item name with names
app.get('/api/droplist/by-item-name-detail', async (req, res) => {
  try {
    const { keyword = '', limit = 100 } = req.query;

    if (!keyword) {
      return res.status(400).json({ error: 'Keyword is required' });
    }

    // Convert simplified to traditional
    const convertedKeyword = converter(keyword);

    const connection = await pool.getConnection();

    const query = `
      SELECT
        d.mobId,
        d.itemId,
        d.min,
        d.max,
        d.chance,
        n.name as monster_name,
        COALESCE(i.name, w.name, a.name) as item_name,
        COALESCE(i.item_type, CONCAT('武器-', w.type), CONCAT('护甲-', a.type)) as item_type,
        COALESCE(i.bless, w.bless, a.bless) as item_bless,
        CASE
          WHEN i.item_id IS NOT NULL THEN 'etcitem'
          WHEN w.item_id IS NOT NULL THEN 'weapon'
          WHEN a.item_id IS NOT NULL THEN 'armor'
          ELSE 'unknown'
        END as item_source
      FROM droplist d
      LEFT JOIN npc n ON d.mobId = n.npcid
      LEFT JOIN etcitem i ON d.itemId = i.item_id
      LEFT JOIN weapon w ON d.itemId = w.item_id
      LEFT JOIN armor a ON d.itemId = a.item_id
      WHERE d.itemId IN (
        SELECT item_id FROM etcitem WHERE name LIKE ?
        UNION
        SELECT item_id FROM weapon WHERE name LIKE ?
        UNION
        SELECT item_id FROM armor WHERE name LIKE ?
      )
      ORDER BY d.chance DESC
      LIMIT ?
    `;

    const searchPattern = `%${convertedKeyword}%`;
    const [results] = await connection.execute(query, [searchPattern, searchPattern, searchPattern, parseInt(limit)]);


    connection.release();

    const formattedResults = results.map(drop => ({
      ...drop,
      item_name: formatItemName(drop.item_name, drop.item_bless)
    }));

    res.json({
      success: true,
      data: formattedResults,
      keyword
    });

  } catch (error) {

    console.error('Droplist search error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Item detail endpoint for droplist
app.get('/api/items/detail', async (req, res) => {
  try {
    const { itemId } = req.query;

    if (!itemId) {
      return res.status(400).json({ error: 'Item ID is required' });
    }

    const connection = await pool.getConnection();

    const query = `
      SELECT item_id, name, classname, name_id,
             item_type, use_type, material, weight, invgfx, grdgfx,
             itemdesc_id, stackable, max_charge_count, dmg_small,
             dmg_large, min_lvl, max_lvl, bless,
             trade, cant_delete, delay_id, delay_time,
             delay_effect, food_volume, save_at_once
      FROM etcitem
      WHERE item_id = ?
    `;

    const [results] = await connection.execute(query, [itemId]);

    connection.release();

    if (results[0]) {
      results[0].name = formatItemName(results[0].name, results[0].bless);
    }

    res.json({
      success: true,
      data: results[0] || null
    });


  } catch (error) {
    console.error('Item detail error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ error: 'Something went wrong!' });
});

// 404 handler
app.use('*', (req, res) => {
  // Check if the request is for an API
  if (req.originalUrl.startsWith('/api')) {
    return res.status(404).json({ error: 'Route not found' });
  }
  // Otherwise serve index.html for React Router
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});


// Initialize database and start server
async function startServer() {
  await initializeDB();
  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
  });
}

startServer();
