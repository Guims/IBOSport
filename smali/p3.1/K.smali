.class public final Lp3/K;
.super Lcom/google/android/gms/internal/play_billing/w;


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final i()Lp3/L;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lp3/L;->i(I[Ljava/lang/Object;)Lp3/L;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/w;->b:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/w;->c:Z

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lp3/L;->r:I

    new-instance v1, Lp3/k0;

    invoke-direct {v1, v0}, Lp3/k0;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    sget v0, Lp3/L;->r:I

    sget-object v0, Lp3/e0;->y:Lp3/e0;

    return-object v0
.end method
