# Pythonベースイメージを使用
FROM python:3.12 as base

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
RUN pip install django djangorestframework tensorflow

# サービスを開始するためのコマンド
CMD ["python", "./backend/manage.py", "runserver", "0.0.0.0:8000"]