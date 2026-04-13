.class public final Landroidx/lifecycle/H;
.super Ljava/lang/Object;

# interfaces
.implements Lw1/c;


# instance fields
.field public final a:Lk/r;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public final d:LS4/g;


# direct methods
.method public constructor <init>(Lk/r;Landroidx/lifecycle/M;)V
    .locals 1

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/H;->a:Lk/r;

    new-instance p1, LA5/m;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2}, LA5/m;-><init>(ILjava/lang/Object;)V

    new-instance p2, LS4/g;

    invoke-direct {p2, p1}, LS4/g;-><init>(Ld5/a;)V

    iput-object p2, p0, Landroidx/lifecycle/H;->d:LS4/g;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/lifecycle/H;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/H;->d:LS4/g;

    invoke-virtual {v1}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/I;

    iget-object v1, v1, Landroidx/lifecycle/I;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/lifecycle/H;->b:Z

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method
