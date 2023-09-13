from flask import Flask, render_template, request

app = Flask(__name__)

# 訪問者数を保存する変数
visitor_count = 0

@app.route('/')
def index():
    global visitor_count
    visitor_count += 1  # 訪問者数を1つ増やす
    return render_template('index.html', visitor_count=visitor_count)

if __name__ == '__main__':
    app.run(debug=True)
