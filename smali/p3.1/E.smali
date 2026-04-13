.class public final Lp3/E;
.super Lcom/google/android/gms/internal/play_billing/w;


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final i()Lp3/Y;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/w;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w;->b:I

    invoke-static {v1, v0}, Lp3/H;->h(I[Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    return-object v0
.end method
