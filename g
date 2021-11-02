codigo = []
nombre = []
apellidos = []
edad = []
numero = []
correo = []
curso = []


codigo_r = open('codigo.txt', 'r')
nombre_r = open('nombre.txt', 'r')
apellidos_r = open('apellido.txt', 'r')
edad_r = open('edad.txt', 'r')
numero_r = open('telefono.txt', 'r')
correo_r = open('correo.txt', 'r')
curso_r = open('curso.txt', 'r')

for cr in codigo_r.readline().split(','):
    if cr != '':
        codigo.append(cr)
for nr in nombre_r.readline().split(','):
    if nr != '':
        nombre.append(nr)
for ar in apellidos_r.readline().split(','):
    if ar != '':
        apellidos.append(ar)
for er in edad_r.readline().split(','):
    if er != '':
        edad.append(er)
for tr in numero_r.readline().split(','):
    if tr != '':
        numero.append(int(tr))
for ccr in correo_r.readline().split(','):
    if ccr != '':
        correo.append(ccr)
for cur in curso_r.readline().split(','):
    if cur != '':
        curso.append(cur)



codigo_r.close()
nombre_r.close()
apellidos_r.close()
edad_r.close()
numero_r.close()
correo_r.close()
curso_r.close()



print("Bienvenido al Portal Estudiantil | Universidad Mariano Galvez de Guatemala |     \n")
menu_principal = int(input("              ---------- Menu Principal -----------\n \n1- Ver Planilla\n2- Buscar Estudiante\n3- Insertar Planilla\n"
                           "4- Eliminar planilla\n5- Modificar Planilla\n9- Eliminar datos\n0- Salir \n"))

while menu_principal !=0:

    if menu_principal == 1:
        print("| Codigo    | Nombre    | Apellidos    | Edad    | Numero de contacto    | Correo Electronico    | "
              "Curso    |")
        for x in range(len(codigo)):
            print("  ",codigo[x], "      ", nombre[x], "   ", apellidos[x], "     ", edad[x], '     ', numero[x],'      ',correo[x],"   ",curso[x])
    elif menu_principal == 2:
        estudiante = input("Inserte codigo de estudiante: ")
        for x in range(len(codigo)):
            if codigo[x] == estudiante:
                print(f'Codigo: {codigo[x]}\nNombre: {nombre[x]} {apellidos[x]}\nEdad: {edad[x]}\nNumero de celular: {numero[x]}\nCorreo electronico: {correo[x]}\n')
    elif menu_principal == 3:
        print("Llena los siguientes datos: ")
        codigo.append(input("Inserta nuevo codigo: "))
        nombre.append(input("Inserta Nombre: "))
        apellidos.append(input("Inserta Apellidos: "))
        edad.append(input("Inserta edad: "))
        numero.append(int(input("Inserta numero de celular: ")))
        correo.append(input("Inserta correo electronico: "))
        curso.append(input("Inserta curso correspondiente: "))
        print("Persona agregada correctamente")
    elif menu_principal == 4:
        cod = input("Inserta el codigo a eliminar:\n")
        for i in range(len(codigo)-1,-1,-1):
            if codigo[i] == cod:
                codigo.pop(i)
                nombre.pop(i)
                apellidos.pop(i)
                edad.pop(i)
                numero.pop(i)
                correo.pop(i)
                curso.pop(i)
                print("Persona eliminada")
    elif menu_principal == 5:
        cod = input("Inserta el codigo a modificar:\n")
        for x in range(len(codigo)):
            if codigo[x]==cod:
                nombre[x] = input("Nuevo nombre: ")
                apellidos[x] = input("Inserte apellidos: ")
                edad[x] = input("Inserte edad: ")
                numero[x] = input("Inserte numero de telefono: ")
                correo[x] = input("Inserte correo electronico: ")
                curso[x] = input("Inserte curso correspondiente: ")
                print("Persona modificada")
    elif menu_principal == 9:
        confirmacion = int(input("Eliminara todos los datos en las listas ¿Desea continuar?\n 1- Confirmar\n 2- Cancelar\n"))
        if confirmacion==1:
            del codigo[0:len(codigo)]
            del nombre[0:len(nombre)]
            del apellidos[0:len(apellidos)]
            del edad[0:len(edad)]
            del numero[0:len(numero)]
            del correo[0:len(correo)]
            del curso[0:len(curso)]
            codigo = []
            nombre = []
            apellidos = []
            edad = []
            numero = []
            correo = []
            curso = []

        elif confirmacion==2:
            print("Cancelado")
        else:
            print("Digite una opcion correcta")
    else:
        print("Por favor digita una opcion correcta")

    menu_principal = int(input("\n              ----------- Menu Principal -----------\n1- Ver Planilla\n2- Buscar Estudiante\n3- Insertar Planilla\n"
                               "4- Eliminar planilla\n5- Modificar Planilla\n9- Eliminar datos\n0- Salir \n"))

#ARCHIVOS

codigot = open('codigo.txt', 'w')
nombret = open('nombre.txt', 'w')
apellidot = open('apellido.txt', 'w')
edadt = open('edad.txt', 'w')
telefonot = open('telefono.txt', 'w')
correot = open('correo.txt', 'w')
cursot = open('curso.txt', 'w')

for x in range(len(codigo)):
    codigot.write(codigo[x]+',')
    nombret.write(nombre[x] + ',')
    apellidot.write(apellidos[x] + ',')
    edadt.write(edad[x] + ',')
    telefonot.write(str(numero[x]) + ',')
    correot.write(correo[x] + ',')
    cursot.write(curso[x] + ',')

codigot.close()
nombret.close()
apellidot.close()
edadt.close()
telefonot.close()
correot.close()
cursot.close()
