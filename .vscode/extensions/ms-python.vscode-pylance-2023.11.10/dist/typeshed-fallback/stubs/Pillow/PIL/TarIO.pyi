from _typeshed import Incomplete, Unused

from .ContainerIO import ContainerIO

class TarIO(ContainerIO):
    fh: Incomplete
    def __init__(self, tarfile, file) -> None: ...
    def __enter__(self): ...
    def __exit__(self, *args: Unused) -> None: ...
    def close(self) -> None: ...