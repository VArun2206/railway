echo "==========> INSTALLING REQUIREMENTS <========"
pip install -r requirements.txt
echo "======> REQUIREMENTS INSTALLED <======"

echo "=====> COLLECTING STATIC FILES <====="
python3.12 manage.py collectstatic --noinput --clear
echo "=====> STATIC FILES COLLECATED <====="

echo "=====> MAKE-MIGRATIONS <====="
python3.12 manage.py makemigrations --noinput
python3.12 manage.py migrate --noinput
echo "=====> MAKE-MIGRATIONS-END <====="