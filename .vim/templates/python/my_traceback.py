
import traceback

try:
    raise ValueError()
# except Exception as e:
except ValueError as e:
    # 1
    traceback.print_exc()
    pass

# 2
traceback.print_stack()
