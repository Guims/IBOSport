.class public final Lq5/k;
.super LX4/c;

# interfaces
.implements Lp5/c;


# instance fields
.field public final b:Lp5/c;

.field public final q:LV4/i;

.field public final r:I

.field public s:LV4/i;

.field public t:LV4/d;


# direct methods
.method public constructor <init>(Lp5/c;LV4/i;)V
    .locals 2

    sget-object v0, Lq5/h;->b:Lq5/h;

    sget-object v1, LV4/j;->b:LV4/j;

    invoke-direct {p0, v0, v1}, LX4/c;-><init>(LV4/d;LV4/i;)V

    iput-object p1, p0, Lq5/k;->b:Lp5/c;

    iput-object p2, p0, Lq5/k;->q:LV4/i;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lq5/j;->b:Lq5/j;

    invoke-interface {p2, p1, v0}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lq5/k;->r:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lq5/k;->d(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Lq5/f;

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lq5/f;-><init>(LV4/i;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lq5/k;->s:LV4/i;

    throw p1
.end method

.method public final d(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-interface {p1}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    sget-object v1, Lm5/t;->q:Lm5/t;

    invoke-interface {v0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v1

    check-cast v1, Lm5/Q;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lm5/Q;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Lm5/a0;

    invoke-virtual {v1}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lq5/k;->s:LV4/i;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_18

    instance-of v3, v1, Lq5/f;

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    check-cast v1, Lq5/f;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lq5/f;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but then emission attempt of value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "<this>"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lk5/d;

    invoke-direct {v1, p2}, Lk5/d;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lk5/d;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v1, LT4/p;->b:LT4/p;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lk5/d;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lk5/d;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lcom/bumptech/glide/c;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v1}, Lk5/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lk5/d;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v1, v5

    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lk5/f;->O(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, LT4/i;->u(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_4
    if-ge v7, v6, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v4

    :goto_5
    const/4 v11, -0x1

    if-ge v10, v9, :cond_8

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, LE2/g;->w(C)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    move v10, v11

    :goto_6
    if-ne v10, v11, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    move-object v5, v2

    goto :goto_8

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_c

    move-object v5, v6

    goto :goto_7

    :cond_d
    :goto_8
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    :cond_e
    move v3, v4

    :goto_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {v1}, LT4/h;->s(Ljava/util/List;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    if-ltz v4, :cond_14

    check-cast v7, Ljava/lang/String;

    if-eqz v4, :cond_f

    if-ne v4, v5, :cond_10

    :cond_f
    invoke-static {v7}, Lk5/f;->O(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v2

    goto :goto_c

    :cond_10
    invoke-static {v7, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v3, :cond_13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_11

    goto :goto_b

    :cond_11
    move v4, v3

    :goto_b
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "substring(...)"

    invoke-static {v4, v7}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    if-eqz v4, :cond_12

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    move v4, v8

    goto :goto_a

    :cond_13
    const-string p1, "Requested character count "

    const-string p2, " is less than zero."

    invoke-static {p1, v3, p2}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_14
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Index overflow has happened."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v6, v0}, LT4/g;->y(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lq5/n;

    invoke-direct {v3, p0}, Lq5/n;-><init>(Lq5/k;)V

    invoke-interface {v0, v1, v3}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v3, p0, Lq5/k;->r:I

    if-ne v1, v3, :cond_17

    iput-object v0, p0, Lq5/k;->s:LV4/i;

    goto :goto_d

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lq5/k;->q:LV4/i;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\t\tbut emission happened in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_d
    iput-object p1, p0, Lq5/k;->t:LV4/d;

    sget-object p1, Lq5/m;->a:Ld5/q;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    iget-object v1, p0, Lq5/k;->b:Lp5/c;

    invoke-static {v1, v0}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, p2, p0}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    invoke-static {p1, p2}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    iput-object v2, p0, Lq5/k;->t:LV4/d;

    :cond_19
    return-object p1
.end method

.method public final getCallerFrame()LX4/d;
    .locals 2

    iget-object v0, p0, Lq5/k;->t:LV4/d;

    instance-of v1, v0, LX4/d;

    if-eqz v1, :cond_0

    check-cast v0, LX4/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()LV4/i;
    .locals 1

    iget-object v0, p0, Lq5/k;->s:LV4/i;

    if-nez v0, :cond_0

    sget-object v0, LV4/j;->b:LV4/j;

    :cond_0
    return-object v0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, LS4/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lq5/f;

    invoke-virtual {p0}, Lq5/k;->getContext()LV4/i;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lq5/f;-><init>(LV4/i;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lq5/k;->s:LV4/i;

    :cond_0
    iget-object v0, p0, Lq5/k;->t:LV4/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, LV4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    sget-object p1, LW4/a;->b:LW4/a;

    return-object p1
.end method
