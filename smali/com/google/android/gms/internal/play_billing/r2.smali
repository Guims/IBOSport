.class public final Lcom/google/android/gms/internal/play_billing/r2;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/io/Serializable;

.field public b:Lcom/google/android/gms/internal/play_billing/t2;

.field public c:Lcom/google/android/gms/internal/play_billing/u2;

.field public d:Z


# virtual methods
.method public final finalize()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/r2;->b:Lcom/google/android/gms/internal/play_billing/t2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/t2;->q:Lcom/google/android/gms/internal/play_billing/s2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q2;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/play_billing/d0;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/r2;->a:Ljava/io/Serializable;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/d0;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/google/android/gms/internal/play_billing/p1;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/play_billing/p1;-><init>(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/q2;->u:Lcom/google/android/gms/internal/play_billing/d1;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/play_billing/d1;->w(Lcom/google/android/gms/internal/play_billing/q2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/q2;->d(Lcom/google/android/gms/internal/play_billing/q2;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/r2;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/r2;->c:Lcom/google/android/gms/internal/play_billing/u2;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/u2;->i(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
