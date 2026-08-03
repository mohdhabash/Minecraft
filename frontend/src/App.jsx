import { useState } from 'react'

function App() {
  const [mode, setMode] = useState('overview')

  return (
    <div className="app-shell">
      <header className="app-header">
        <h1>Minecraft-like Dashboard</h1>
        <p>Use this React UI to launch and configure your Godot prototype.</p>
      </header>
      <main>
        <section className="card">
          <h2>Game controls</h2>
          <p>Move with W/A/S/D. Jump with Space. Mouse look is captured by Godot.</p>
        </section>
        <section className="card">
          <h2>Game Launcher</h2>
          <p>Current UI mode: {mode}</p>
          <div className="button-row">
            <a className="button" href="/game/index.html" target="_blank" rel="noopener noreferrer">
              Open Game in Browser
            </a>
          </div>
          <p className="hint">Export your Godot game to <code>/frontend/public/game/</code> and then use this button.</p>
        </section>
      </main>
    </div>
  )
}

export default App
