.class public final LT/g;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public q:Ljava/util/Iterator;

.field public r:Ljava/lang/Object;

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/util/List;

.field public final synthetic v:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;LV4/d;)V
    .locals 0

    iput-object p1, p0, LT/g;->u:Ljava/util/List;

    iput-object p2, p0, LT/g;->v:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 3

    new-instance v0, LT/g;

    iget-object v1, p0, LT/g;->u:Ljava/util/List;

    iget-object v2, p0, LT/g;->v:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p2}, LT/g;-><init>(Ljava/util/List;Ljava/util/ArrayList;LV4/d;)V

    iput-object p1, v0, LT/g;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/g;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/g;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LT/g;->s:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, LT/g;->q:Ljava/util/Iterator;

    iget-object v3, p0, LT/g;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LT/g;->r:Ljava/lang/Object;

    iget-object v4, p0, LT/g;->q:Ljava/util/Iterator;

    iget-object v5, p0, LT/g;->t:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v0

    move-object v0, v4

    move-object v3, v5

    goto :goto_0

    :cond_2
    new-instance p1, LT/f;

    invoke-direct {p1, v1, v2}, LX4/g;-><init>(ILV4/d;)V

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v5, p0, LT/g;->t:Ljava/lang/Object;

    iput-object v4, p0, LT/g;->q:Ljava/util/Iterator;

    iput-object v2, p0, LT/g;->r:Ljava/lang/Object;

    iput v3, p0, LT/g;->s:I

    throw v2

    :cond_3
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/g;->t:Ljava/lang/Object;

    iget-object v0, p0, LT/g;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v3, p0, LT/g;->v:Ljava/util/ArrayList;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    return-object p1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    iput-object v3, p0, LT/g;->t:Ljava/lang/Object;

    iput-object v0, p0, LT/g;->q:Ljava/util/Iterator;

    iput-object p1, p0, LT/g;->r:Ljava/lang/Object;

    iput v1, p0, LT/g;->s:I

    throw v2

    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
