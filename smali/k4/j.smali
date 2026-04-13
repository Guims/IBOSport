.class public final Lk4/j;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:LX/g;

.field public final synthetic t:Lk4/k;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LX/g;Lk4/k;LV4/d;)V
    .locals 0

    iput-object p1, p0, Lk4/j;->r:Ljava/lang/Object;

    iput-object p2, p0, Lk4/j;->s:LX/g;

    iput-object p3, p0, Lk4/j;->t:Lk4/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 4

    new-instance v0, Lk4/j;

    iget-object v1, p0, Lk4/j;->s:LX/g;

    iget-object v2, p0, Lk4/j;->t:Lk4/k;

    iget-object v3, p0, Lk4/j;->r:Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2, p2}, Lk4/j;-><init>(Ljava/lang/Object;LX/g;Lk4/k;LV4/d;)V

    iput-object p1, v0, Lk4/j;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LX/b;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, Lk4/j;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lk4/j;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lk4/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, Lk4/j;->q:Ljava/lang/Object;

    check-cast p1, LX/b;

    const-string v0, "key"

    iget-object v1, p0, Lk4/j;->s:LX/g;

    iget-object v2, p0, Lk4/j;->r:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LX/b;->b()V

    iget-object v0, p1, LX/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lk4/j;->t:Lk4/k;

    invoke-static {v0, p1}, Lk4/k;->a(Lk4/k;LX/b;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
