from dis import dis
# import dis


def show_dis(command):
    c = compile(command, '', 'exec')
    dis(c)

def main():
    print("start main")
    show_dis("1 == 1")

if __name__ == "__main__":
    main()
