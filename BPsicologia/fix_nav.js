const fs = require('fs');
const f = 'C:\\Users\\Adrian\\BPsicologia\\index.html';
let c = fs.readFileSync(f, 'utf8');

c = c.replace(
  /\.logo-nombre \{ font-family:[^}]+color: var\(--verde-oscuro\);[^}]+\}/,
  ".logo-nombre { font-family: 'Playfair Display', serif; font-size: 1.25rem; font-weight: 700; color: var(--blanco); letter-spacing: 0.01em; text-transform: uppercase; }\n    nav.scrolled .logo-nombre { color: var(--verde-oscuro); }"
);

c = c.replace(
  /\.logo-nombre span \{ color: var\(--verde\); \}/,
  ".logo-nombre span { color: rgba(255,255,255,0.8); }\n    nav.scrolled .logo-nombre span { color: var(--verde); }"
);

c = c.replace(
  /nav ul a \{ text-decoration: none; color: var\(--texto\);[^}]+\}/,
  "nav ul a { text-decoration: none; color: rgba(255,255,255,0.9); font-size: 0.9rem; transition: color 0.2s; }\n    nav.scrolled ul a { color: var(--texto); }"
);

c = c.replace(
  /nav ul a:hover \{ color: var\(--verde-oscuro\); \}/,
  "nav ul a:hover { color: var(--blanco); }\n    nav.scrolled ul a:hover { color: var(--verde-oscuro); }"
);

fs.writeFileSync(f, c, 'utf8');
console.log('OK');
