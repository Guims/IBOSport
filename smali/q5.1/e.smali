.class public final Lq5/e;
.super Ljava/lang/Object;

# interfaces
.implements Lq5/g;


# instance fields
.field public final b:LV4/i;

.field public final q:I

.field public final r:I

.field public final s:Lp5/b;


# direct methods
.method public constructor <init>(Lp5/b;LV4/i;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq5/e;->b:LV4/i;

    iput p3, p0, Lq5/e;->q:I

    iput p4, p0, Lq5/e;->r:I

    iput-object p1, p0, Lq5/e;->s:Lp5/b;

    return-void
.end method


# virtual methods
.method public final B(LV4/i;II)Lp5/b;
    .locals 4

    iget-object v0, p0, Lq5/e;->b:LV4/i;

    invoke-interface {p1, v0}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p1

    const/4 v1, 0x1

    iget v2, p0, Lq5/e;->r:I

    iget v3, p0, Lq5/e;->q:I

    if-eq p3, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, -0x3

    if-ne v3, p3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    :goto_0
    move p2, v3

    goto :goto_1

    :cond_2
    const/4 p3, -0x2

    if-ne v3, p3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p2, v3

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    move p3, v2

    :goto_2
    invoke-static {p1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v3, :cond_6

    if-ne p3, v2, :cond_6

    return-object p0

    :cond_6
    new-instance v0, Lq5/e;

    iget-object v1, p0, Lq5/e;->s:Lp5/b;

    invoke-direct {v0, v1, p1, p2, p3}, Lq5/e;-><init>(Lp5/b;LV4/i;II)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, LV4/j;->b:LV4/j;

    iget-object v2, p0, Lq5/e;->b:LV4/i;

    if-eq v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "context="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, -0x3

    iget v2, p0, Lq5/e;->q:I

    if-eq v2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "capacity="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lq5/e;->r:I

    if-eq v2, v1, :cond_5

    const/4 v1, 0x1

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const-string v1, "null"

    goto :goto_0

    :cond_2
    const-string v1, "DROP_LATEST"

    goto :goto_0

    :cond_3
    const-string v1, "DROP_OLDEST"

    goto :goto_0

    :cond_4
    const-string v1, "SUSPEND"

    :goto_0
    const-string v2, "onBufferOverflow="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, LT4/g;->z(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ld5/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lp5/c;LX4/c;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lq5/e;->q:I

    const/4 v1, -0x3

    sget-object v2, LW4/a;->b:LW4/a;

    const/4 v3, 0x0

    sget-object v4, LS4/i;->a:LS4/i;

    if-ne v0, v1, :cond_5

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lm5/p;->r:Lm5/p;

    iget-object v6, p0, Lq5/e;->b:LV4/i;

    invoke-interface {v6, v1, v5}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v6}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Lm5/w;->b(LV4/i;LV4/i;Z)LV4/i;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lq5/e;->s:Lp5/b;

    invoke-interface {v0, p1, p2}, Lp5/b;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    if-ne p1, v2, :cond_7

    return-object p1

    :cond_2
    sget-object v5, LV4/e;->b:LV4/e;

    invoke-interface {v1, v5}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v6

    invoke-interface {v0, v5}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    invoke-static {v6, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    instance-of v5, p1, Lq5/o;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v5, Lp5/n;

    invoke-direct {v5, p1, v0}, Lp5/n;-><init>(Lp5/c;LV4/i;)V

    move-object p1, v5

    :goto_2
    new-instance v0, Lq5/d;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v3, v5}, Lq5/d;-><init>(Lq5/e;LV4/d;I)V

    invoke-static {v1}, Lr5/a;->k(LV4/i;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p1, v3, v0, p2}, Lq5/i;->a(LV4/i;Ljava/lang/Object;Ljava/lang/Object;Ld5/p;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v4

    :goto_3
    if-ne p1, v2, :cond_7

    return-object p1

    :cond_5
    new-instance v0, LT/t;

    invoke-direct {v0, p1, p0, v3}, LT/t;-><init>(Lp5/c;Lq5/e;LV4/d;)V

    new-instance p1, Lr5/s;

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lr5/s;-><init>(LV4/i;LX4/c;)V

    invoke-static {p1, p1, v0}, Lcom/bumptech/glide/d;->r(Lr5/s;Lr5/s;Ld5/p;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, v4

    :goto_4
    if-ne p1, v2, :cond_7

    return-object p1

    :cond_7
    return-object v4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq5/e;->s:Lp5/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq5/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
