.class public final Lretrofit2/KotlinExtensions;
.super Ljava/lang/Object;


# direct methods
.method public static final await(Lretrofit2/Call;LV4/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "LV4/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lm5/f;

    invoke-static {p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lm5/f;-><init>(ILV4/d;)V

    new-instance p1, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {p1, p0}, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lretrofit2/Call;)V

    invoke-virtual {v0, p1}, Lm5/f;->t(Ld5/l;)V

    new-instance p1, Lretrofit2/KotlinExtensions$await$2$2;

    invoke-direct {p1, v0}, Lretrofit2/KotlinExtensions$await$2$2;-><init>(Lm5/e;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    invoke-virtual {v0}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final awaitNullable(Lretrofit2/Call;LV4/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "LV4/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lm5/f;

    invoke-static {p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lm5/f;-><init>(ILV4/d;)V

    new-instance p1, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2;

    invoke-direct {p1, p0}, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2;-><init>(Lretrofit2/Call;)V

    invoke-virtual {v0, p1}, Lm5/f;->t(Ld5/l;)V

    new-instance p1, Lretrofit2/KotlinExtensions$await$4$2;

    invoke-direct {p1, v0}, Lretrofit2/KotlinExtensions$await$4$2;-><init>(Lm5/e;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    invoke-virtual {v0}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final awaitResponse(Lretrofit2/Call;LV4/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "LV4/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lm5/f;

    invoke-static {p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lm5/f;-><init>(ILV4/d;)V

    new-instance p1, Lretrofit2/KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {p1, p0}, Lretrofit2/KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lretrofit2/Call;)V

    invoke-virtual {v0, p1}, Lm5/f;->t(Ld5/l;)V

    new-instance p1, Lretrofit2/KotlinExtensions$awaitResponse$2$2;

    invoke-direct {p1, v0}, Lretrofit2/KotlinExtensions$awaitResponse$2$2;-><init>(Lm5/e;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    invoke-virtual {v0}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$create"

    invoke-static {p0, v0}, Le5/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final suspendAndThrow(Ljava/lang/Exception;LV4/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "LV4/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lretrofit2/KotlinExtensions$suspendAndThrow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;

    iget v1, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;

    invoke-direct {v0, p1}, Lretrofit2/KotlinExtensions$suspendAndThrow$1;-><init>(LV4/d;)V

    :goto_0
    iget-object p1, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->result:Ljava/lang/Object;

    iget v1, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    sget-object p0, LS4/i;->a:LS4/i;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iput-object p0, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    sget-object p1, Lm5/C;->a:Lt5/d;

    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object v1

    new-instance v2, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;

    invoke-direct {v2, v0, p0}, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;-><init>(LV4/d;Ljava/lang/Exception;)V

    invoke-virtual {p1, v1, v2}, Lt5/g;->x(LV4/i;Ljava/lang/Runnable;)V

    sget-object p0, LW4/a;->b:LW4/a;

    return-object p0
.end method
