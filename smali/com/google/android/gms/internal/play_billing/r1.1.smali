.class public final Lcom/google/android/gms/internal/play_billing/r1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/u1;


# static fields
.field public static final b:Lcom/google/android/gms/internal/play_billing/e1;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/e1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/e1;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/r1;->b:Lcom/google/android/gms/internal/play_billing/e1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/r1;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/A1;->c:Lcom/google/android/gms/internal/play_billing/A1;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/u1;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/e1;->b:Lcom/google/android/gms/internal/play_billing/e1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/play_billing/r1;->b:Lcom/google/android/gms/internal/play_billing/e1;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/r1;-><init>([Lcom/google/android/gms/internal/play_billing/u1;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/Z0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/Z0;->q:Lcom/google/android/gms/internal/play_billing/r1;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/play_billing/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/C1;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/play_billing/u1;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/play_billing/u1;->b(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/play_billing/u1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/C1;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/gms/internal/play_billing/u1;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/play_billing/u1;->b(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public c(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/S0;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z0;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->Y(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/Z0;->q:Lcom/google/android/gms/internal/play_billing/r1;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/play_billing/D1;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Z0;->Y(II)V

    return-void
.end method

.method public d(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/S0;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z0;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/S0;->a(Lcom/google/android/gms/internal/play_billing/D1;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/Z0;->q:Lcom/google/android/gms/internal/play_billing/r1;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/play_billing/D1;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V

    return-void
.end method
