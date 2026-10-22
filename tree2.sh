# Tạo commit gốc (base) trên master
git checkout master
git commit --allow-empty -m "Base commit"

# Tách 3 nhánh song song từ base
git branch nhanh-do
git branch nhanh-xanh-duong
git branch nhanh-xanh-la

# Thêm commit cho nhánh đỏ
git checkout nhanh-do
git commit --allow-empty -m "Đỏ 1"; git commit --allow-empty -m "Đỏ 2"; git commit --allow-empty -m "Đỏ 3"

# Thêm commit cho nhánh xanh dương
git checkout nhanh-xanh-duong
git commit --allow-empty -m "Xanh dương 1"; git commit --allow-empty -m "Xanh dương 2"; git commit --allow-empty -m "Xanh dương 3"

# Thêm commit cho nhánh xanh lá
git checkout nhanh-xanh-la
git commit --allow-empty -m "Xanh lá 1"; git commit --allow-empty -m "Xanh lá 2"

# Quay lại master và thực hiện gộp đồng thời (Octopus Merge)
git checkout master
git merge nhanh-do nhanh-xanh-duong nhanh-xanh-la -m "Octopus merge 3 nhánh"