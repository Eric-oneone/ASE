import os
import sys


def main():
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'StoreManageSystem.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "The project environment configuration is abnormal, please check!"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()
