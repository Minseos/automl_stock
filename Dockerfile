#python 3:10-slim 이미지 사용
FROM python:3.10-slim

# 작업 디렉토리 설정
WORKDIR /app

# 패키지 일괄설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 현재 폴더에 있는 stock_analysis_autogluon.py를 dockerfile로 복사해라
COPY . .

# stock_analysis_autogluon.py 파일 실행
CMD ["python",  "stock_analysis_autogluon.py"]