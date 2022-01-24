from flask import Flask,render_template, make_response, redirect, request,url_for,redirect,flash
import mysql.connector
import math

app=Flask(__name__)
conexion= mysql.connector.connect(
    host='0',
    port=3306,
    user='0',
    password='0',
    db='certificates'
)

app.config['SECRET_KEY']='0'

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/certificates/<string:id>/<string:page>')
def certificates(id,page):
    cursor=conexion.cursor()
    posicion=(int(id))*10-10
    cursor.execute('SELECT * FROM certificates.certificate;')
    total=cursor.fetchall()
    page=math.ceil((len(total))/10)
    cursor.execute('SELECT * FROM certificates.certificate ORDER BY Cer_issued DESC LIMIT 10 OFFSET {0};'.format(posicion))
    next=int(id)+1
    if next>=page:
        next=page
    prev=int(id)-1
    if prev==0:
        prev=1
    number=list(range(0,2))
    show=id
    resultados=cursor.fetchall()
    return render_template('certificates.html', courses=resultados, id=id, next=next, prev=prev, show=show, number=number, page=page)

@app.route('/datos', methods=['POST'])
def datos():
    if request.method=='POST':
        Cer_title=request.form['Cer_title']
        Cer_issued=request.form['Cer_issued']
        Cer_link=request.form['Cer_link']
        try:
            cursor=conexion.cursor()
            cursor.execute('INSERT INTO certificate(Cer_title,Cer_issued,Cer_link) VALUES(%s,%s,%s)',
            (Cer_title,Cer_issued,Cer_link))
            conexion.commit()
            flash('Certificado agregado correctamente')
            return redirect(url_for('certificado'))
        except Error as ex:
            print('Error de conexión', ex)

@app.route('/delete/<string:id>')
def delete(id):
    cursor=conexion.cursor()
    cursor.execute('DELETE FROM certificate WHERE Cer_id={0}'.format(id))
    conexion.commit()
    flash('Entrada eliminada')
    return redirect(url_for('certificado'))

@app.route('/save/<string:id>')
def save(id):
    return render_template('index.html')

@app.route('/portfolio')
def portfolio():
    return render_template('portfolio.html')

@app.route('/01')
def port01():
    return render_template('port_01.html')

@app.route('/02')
def port02():
    return render_template('port_02.html')

@app.route('/03')
def port03():
    return render_template('port_03.html')

@app.route('/04')
def port04():
    return render_template('port_04.html')

@app.route('/05')
def port05():
    return render_template('port_05.html')

@app.route('/06')
def port06():
    return render_template('port_06.html')

@app.route('/profile')
def profile():
    return render_template('about.html')

@app.route('/skills')
def skill():
    return render_template('skill.html')

@app.route('/contact')
def contact():
    return render_template('contac.html')

@app.route('/panel')
def login():
    return render_template('login.html')

@app.route('/central')
def panel():
    return render_template('panel.html')

@app.route('/proyectos')
def proyectos():
    return render_template('proyectos.html')

@app.route('/certificado')
def certificado():
    if conexion.is_connected():
        cursor=conexion.cursor()
        cursor.execute('SELECT * FROM certificates.certificate ORDER BY Cer_id DESC;')
        resultados=cursor.fetchall()
        return render_template('certificado.html', courses=resultados)

@app.route('/edit/<string:id>')
def edit(id):
    if conexion.is_connected():
        cursor=conexion.cursor()
        cursor.execute('SELECT * FROM certificates.certificate ORDER BY Cer_id DESC;')
        resultados=cursor.fetchall()
        cursor.execute('SELECT * FROM certificates.certificate WHERE Cer_id={0}'.format(id))
        data=cursor.fetchall()
        return render_template('certificado.html', courses=resultados, data=data[0])

@app.errorhandler(404)
def error(e):
    return render_template('error.html'), 404

@app.errorhandler(400)
def error400(e):
    return render_template('error400.html'), 400


if __name__ == '__main__':
	app.run()
