.class public final Lo5/l;
.super Lo5/b;


# instance fields
.field public final z:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0, p1}, Lo5/b;-><init>(I)V

    iput p2, p0, Lo5/l;->z:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const-string p2, "Buffered channel capacity must be at least 1, but "

    const-string v0, " was specified"

    invoke-static {p2, p1, v0}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "This implementation does not support suspension for senders, use "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Le5/n;->a:Le5/o;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Le5/d;

    sget-object p2, Le5/d;->c:Ljava/util/LinkedHashMap;

    const-class v1, Lo5/b;

    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    const/16 v2, 0x24

    if-nez p2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    const/4 v1, 0x6

    invoke-static {v3, v2, p2, v1}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    add-int/2addr p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string p2, "substring(...)"

    invoke-static {v3, p2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lk5/f;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lk5/f;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const-string v2, "Array"

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_8

    move-object v3, v2

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_8
    :goto_0
    const-string p2, " instead"

    invoke-static {p1, v3, p2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v8, LS4/i;->a:LS4/i;

    iget v1, v0, Lo5/l;->z:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_2

    invoke-super/range {p0 .. p1}, Lo5/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lo5/h;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lo5/g;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v8

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    sget-object v6, Lo5/d;->d:LE1/a;

    sget-object v1, Lo5/b;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo5/j;

    :cond_3
    :goto_1
    sget-object v2, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v4, v2

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v7}, Lo5/b;->s(JZ)Z

    move-result v7

    sget v10, Lo5/d;->b:I

    int-to-long v11, v10

    div-long v2, v4, v11

    rem-long v13, v4, v11

    long-to-int v13, v13

    iget-wide v14, v1, Lr5/t;->r:J

    cmp-long v14, v14, v2

    if-eqz v14, :cond_5

    invoke-static {v0, v2, v3, v1}, Lo5/b;->a(Lo5/b;JLo5/j;)Lo5/j;

    move-result-object v2

    if-nez v2, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lo5/g;

    invoke-direct {v2, v1}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_4
    move-object v1, v2

    :cond_5
    move-object/from16 v3, p1

    move v2, v13

    invoke-static/range {v0 .. v7}, Lo5/b;->f(Lo5/b;Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v13

    if-eqz v13, :cond_f

    const/4 v3, 0x1

    if-eq v13, v3, :cond_e

    const/4 v3, 0x2

    if-eq v13, v3, :cond_a

    if-eq v13, v9, :cond_9

    const/4 v2, 0x4

    if-eq v13, v2, :cond_7

    const/4 v2, 0x5

    if-eq v13, v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lr5/d;->a()V

    goto :goto_1

    :cond_7
    sget-object v2, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_8

    invoke-virtual {v1}, Lr5/d;->a()V

    :cond_8
    invoke-virtual {v0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lo5/g;

    invoke-direct {v2, v1}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v1}, Lr5/t;->h()V

    invoke-virtual {v0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lo5/g;

    invoke-direct {v2, v1}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_b
    instance-of v3, v6, Lm5/m0;

    if-eqz v3, :cond_c

    check-cast v6, Lm5/m0;

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_d

    add-int v13, v2, v10

    invoke-interface {v6, v1, v13}, Lm5/m0;->a(Lr5/t;I)V

    :cond_d
    iget-wide v3, v1, Lr5/t;->r:J

    mul-long/2addr v3, v11

    int-to-long v1, v2

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lo5/b;->k(J)V

    :cond_e
    return-object v8

    :cond_f
    invoke-virtual {v1}, Lr5/d;->a()V

    return-object v8
.end method

.method public final c(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lo5/l;->D(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lo5/g;

    if-nez p1, :cond_0

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo5/l;->D(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t()Z
    .locals 2

    iget v0, p0, Lo5/l;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
