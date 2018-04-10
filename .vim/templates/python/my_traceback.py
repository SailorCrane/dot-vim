
import traceback

def err_trace():
    try:
        raise ValueError()
    # except Exception as e:
    except ValueError as e:
        # 1
        traceback.print_exc()
        pass

# 2
def fun_trace():
    traceback.print_stack()
