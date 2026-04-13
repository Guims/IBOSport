.class public final Landroidx/datastore/preferences/protobuf/k;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    sget-object v0, Landroidx/datastore/preferences/protobuf/x;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/j;->b:Landroidx/datastore/preferences/protobuf/k;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    and-int/2addr v0, v1

    return v0
.end method

.method public B()Z
    .locals 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/j;->x(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 7

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    sub-int v3, v1, v2

    shl-int/lit8 v4, v1, 0x1

    if-ltz v4, :cond_0

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    iput v6, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    if-eqz v0, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eqz v0, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public c(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/V;->h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/n;)V

    iget p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    iget p2, p0, Landroidx/datastore/preferences/protobuf/k;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string p2, "Failed to parse the message."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    throw p1
.end method

.method public d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/j;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/j;->e(I)I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/j;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/datastore/preferences/protobuf/j;->a:I

    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/V;->h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/n;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/j;->a(I)V

    iget p1, v0, Landroidx/datastore/preferences/protobuf/j;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroidx/datastore/preferences/protobuf/j;->a:I

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/j;->d(I)V

    return-void

    :cond_0
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public f()Landroidx/datastore/preferences/protobuf/g;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->g()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/k;->f()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1
.end method

.method public h(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->h()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->h()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_3

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public i(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public j(Landroidx/datastore/preferences/protobuf/q0;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->r()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->p()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->o()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/k;->f()Landroidx/datastore/preferences/protobuf/g;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    sget-object p1, Landroidx/datastore/preferences/protobuf/S;->c:Landroidx/datastore/preferences/protobuf/S;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/S;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/V;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Landroidx/datastore/preferences/protobuf/k;->d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-interface {p1, p2}, Landroidx/datastore/preferences/protobuf/V;->c(Ljava/lang/Object;)V

    return-object p2

    :pswitch_9
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->f()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->k()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->w()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->n()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->l()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->h()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public k(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_4

    :goto_0
    return-void

    :cond_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_3

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public m(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->l()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->l()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_4

    :goto_0
    return-void

    :cond_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public o(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->n()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->n()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public p(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_4

    :goto_0
    return-void

    :cond_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->p()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_3

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public r(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public s(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->r()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->r()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public t(Landroidx/datastore/preferences/protobuf/w;Z)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->t()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->s()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v3, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v3, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1
.end method

.method public u(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public v(Landroidx/datastore/preferences/protobuf/w;)V
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/k;->y(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->w()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    return-void
.end method

.method public w(I)V
    .locals 4

    if-gtz p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/k;->A()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget v0, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    iget v2, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sub-int v0, v2, v0

    sub-int/2addr p1, v0

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    if-lez p1, :cond_4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    sub-int/2addr v0, p1

    move p1, v0

    :goto_2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->b:I

    :cond_4
    :goto_3
    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public x(I)V
    .locals 4

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/k;->A()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    sub-int v2, v0, v1

    if-ge p1, v2, :cond_1

    add-int v0, v1, p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/k;->c:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    if-lez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public y(I)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->b()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public z(I)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1
.end method
