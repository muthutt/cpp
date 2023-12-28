all: include/app.hpp lib/app.cpp
	clang++ -shared -Wl,-undefined -Wl,dynamic_lookup -o libapp.so -I./include lib/app.cpp

list:
	nm -gU ./libapp.so

rust: include/app.hpp
	bindgen ./include/app.hpp --allowlist-type App -o rust/app.rs
test:
	cd rust && RUST_BACKTRACE=1 RUSTFLAGS='--L /Users/mannamalai/devel/rust/cpp/ --l app '  cargo test --lib
