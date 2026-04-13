.class public final Lcom/google/android/gms/internal/play_billing/u2;
.super Lcom/google/android/gms/internal/play_billing/q2;


# virtual methods
.method public final i(Ljava/lang/Object;)Z
    .locals 2

    sget-object p1, Lcom/google/android/gms/internal/play_billing/q2;->u:Lcom/google/android/gms/internal/play_billing/d1;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/q2;->v:Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/d1;->w(Lcom/google/android/gms/internal/play_billing/q2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/q2;->d(Lcom/google/android/gms/internal/play_billing/q2;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
