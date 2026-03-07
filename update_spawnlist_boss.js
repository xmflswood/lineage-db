const fs = require('fs');
const path = require('path');

const filePath = path.join(__dirname, '363db/yiwei_server/spawnlist_boss.sql');

// Read the file
let content = fs.readFileSync(filePath, 'utf8');

// Split into lines
const lines = content.split('\n');

// Process each line
const modifiedLines = lines.map(line => {
    // Only process INSERT lines for spawnlist_boss
    if (line.includes('INSERT INTO `spawnlist_boss` VALUES')) {
        // Use regex to find and replace the 8th and 9th values (locx2 and locy2)
        // Pattern: VALUES ('v1', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7', 'v8', 'v9', ...)
        // We need to replace v8 (locx2) and v9 (locy2) with '0'
        
        const match = line.match(/^(INSERT INTO `spawnlist_boss` VALUES \()(.*)(\);?)$/);
        if (match) {
            const prefix = match[1];
            const valuesPart = match[2];
            const suffix = match[3];
            
            // Split values by ', ' pattern
            const values = valuesPart.split(', ');
            
            if (values.length >= 9) {
                // Set locx2 (index 7) and locy2 (index 8) to '0'
                values[7] = "'0'";
                values[8] = "'0'";
                
                return prefix + values.join(', ') + suffix;
            }
        }
    }
    return line;
});

// Write back
const modifiedContent = modifiedLines.join('\n');
fs.writeFileSync(filePath, modifiedContent, 'utf8');

console.log('Done! locx2 and locy2 have been set to 0 in all rows.');