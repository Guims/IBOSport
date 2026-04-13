.class public abstract LV4/a;
.super Ljava/lang/Object;

# interfaces
.implements LV4/g;


# instance fields
.field public final b:LV4/h;


# direct methods
.method public constructor <init>(LV4/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV4/a;->b:LV4/h;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()LV4/h;
    .locals 1

    iget-object v0, p0, LV4/a;->b:LV4/h;

    return-object v0
.end method

.method public h(LV4/h;)LV4/g;
    .locals 0

    invoke-static {p0, p1}, LC2/b;->u(LV4/g;LV4/h;)LV4/g;

    move-result-object p1

    return-object p1
.end method

.method public r(LV4/h;)LV4/i;
    .locals 0

    invoke-static {p0, p1}, LC2/b;->C(LV4/g;LV4/h;)LV4/i;

    move-result-object p1

    return-object p1
.end method

.method public final s(LV4/i;)LV4/i;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LV4/j;->b:LV4/j;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LV4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LV4/b;-><init>(I)V

    invoke-interface {p1, p0, v0}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV4/i;

    return-object p1
.end method
