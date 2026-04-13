.class public abstract Lcom/google/android/gms/internal/play_billing/f1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lcom/google/android/gms/internal/play_billing/g1;

.field public q:Lcom/google/android/gms/internal/play_billing/g1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/g1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/f1;->b:Lcom/google/android/gms/internal/play_billing/g1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/g1;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/g1;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/g1;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(ILjava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p0

    const-string v1, "Element at index "

    const-string v2, " is null."

    invoke-static {v1, v0, v2}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/play_billing/g1;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/f1;->c()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/g1;->m(Lcom/google/android/gms/internal/play_billing/g1;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/G1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/G1;-><init>()V

    throw v0
.end method

.method public final c()Lcom/google/android/gms/internal/play_billing/g1;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g1;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/A1;->c:Lcom/google/android/gms/internal/play_billing/A1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/A1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/D1;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g1;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->b:Lcom/google/android/gms/internal/play_billing/g1;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/g1;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/f1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/f1;->c()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    return-object v0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g1;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->b:Lcom/google/android/gms/internal/play_billing/g1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/g1;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/g1;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/A1;->c:Lcom/google/android/gms/internal/play_billing/A1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/A1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    :cond_0
    return-void
.end method
