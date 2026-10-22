# Khởi tạo nhánh master và nhánh phụ
git checkout master
git commit --allow-empty -m "Master base"
git checkout -b nhanh-phu

# Bậc thang 1
git commit --allow-empty -m "Nhánh phụ commit 1"
git checkout master; git commit --allow-empty -m "Master commit 1"
git merge --no-ff nhanh-phu -m "Merge nhánh phụ lần 1"

# Bậc thang 2
git checkout nhanh-phu; git commit --allow-empty -m "Nhánh phụ commit 2"
git checkout master; git commit --allow-empty -m "Master commit 2"
git merge --no-ff nhanh-phu -m "Merge nhánh phụ lần 2"

# Bậc thang 3
git checkout nhanh-phu; git commit --allow-empty -m "Nhánh phụ commit 3"
git checkout master; git commit --allow-empty -m "Master commit 3"
git merge --no-ff nhanh-phu -m "Merge nhánh phụ lần 3"