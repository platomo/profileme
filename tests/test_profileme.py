from typing import Callable
from unittest.mock import Mock

from src.profileme import ProfilePlotter, Profiler, ProfileWriter


class TestProfiler:
    def test_run(self) -> None:
        method_to_profile = Mock(spec=Callable)
        writer = Mock(spec=ProfileWriter)
        writer._write_console = False
        plotter = Mock(spec=ProfilePlotter)

        profiler = Profiler(repeat=5, writer=writer, plotter=plotter)

        profiler.run(method_to_profile)

        assert 5 == len(method_to_profile.call_args_list)
