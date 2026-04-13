.class public final LA5/s;
.super Le5/h;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:LA5/t;

.field public final synthetic q:Lw5/r;


# direct methods
.method public constructor <init>(LA5/t;Lw5/r;)V
    .locals 0

    iput-object p1, p0, LA5/s;->b:LA5/t;

    iput-object p2, p0, LA5/s;->q:Lw5/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    iget-object v0, p0, LA5/s;->q:Lw5/r;

    invoke-virtual {v0}, Lw5/r;->h()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {v0}, [Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Lx5/b;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, LA5/s;->b:LA5/t;

    iget-object v1, v1, LA5/t;->e:Ljava/lang/Object;

    check-cast v1, Lw5/a;

    iget-object v1, v1, Lw5/a;->j:Ljava/net/ProxySelector;

    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lx5/b;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {v0}, [Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Lx5/b;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LA5/s;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
