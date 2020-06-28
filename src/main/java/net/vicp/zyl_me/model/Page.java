package net.vicp.zyl_me.model;

public class Page {
    private int page;
    private int totalPage;
    private int total;

    public Page() {
    }

    public Page(int page, int totalPage, int total) {
        this.page = page;
        this.totalPage = totalPage;
        this.total = total;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
