from flask import Flask, render_template, jsonify, request
import os, sqlite3
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DB_PATH = os.path.join(BASE_DIR, 'database', 'tsa_v15.db')
app = Flask(__name__)
def get_db():
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    return conn
@app.route('/')
def index():
    conn = get_db()
    task_count = conn.execute('SELECT COUNT(*) FROM user_tasks_archive').fetchone()[0]
    tpp_sum = conn.execute('SELECT SUM(persen_potongan) FROM absen_guardian').fetchone()[0] or 0
    conn.close()
    return render_template('index_premium.html', task_count=task_count, tpp_total=f'{tpp_sum}%')
if __name__ == '__main__':
    app.run(port=5015, debug=True)
