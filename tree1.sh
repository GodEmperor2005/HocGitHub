# Tạo commit gốc trên master
git commit --allow-empty -m "Initial commit on master"

# Tách nhánh feature-b từ gốc
git branch feature-b

# Tiếp tục có commit trên master, sau đó tách nhánh feature-a
git commit --allow-empty -m "Master commit 2"
git checkout -b feature-a
git commit --allow-empty -m "Feature-a commit 1"
git commit --allow-empty -m "Feature-a commit 2"

# Thêm commit cho feature-b
git checkout feature-b
git commit --allow-empty -m "Feature-b commit 1"
git commit --allow-empty -m "Feature-b commit 2"

# Gộp feature-b vào master
git checkout master
git merge --no-ff feature-b -m "Merge feature-b into master"

# Thêm một commit độc lập trên master trước khi gộp tiếp
git commit --allow-empty -m "Master commit 3"

# Gộp feature-a vào master
git merge --no-ff feature-a -m "Merge feature-a into master"