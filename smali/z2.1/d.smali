.class public final Lz2/d;
.super Lcom/google/android/gms/common/internal/a;


# instance fields
.field public final y:Lx2/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lr0/C;Lx2/i;Lw2/j;Lw2/j;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILr0/C;Lv2/c;Lv2/d;)V

    iput-object p4, v0, Lz2/d;->y:Lx2/i;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method

.method public final o(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lz2/a;

    if-eqz v2, :cond_1

    check-cast v1, Lz2/a;

    return-object v1

    :cond_1
    new-instance v1, Lz2/a;

    invoke-direct {v1, p1, v0}, Lz2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method

.method public final p()[Lu2/c;
    .locals 1

    sget-object v0, LF2/c;->b:[Lu2/c;

    return-object v0
.end method

.method public final q()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lz2/d;->y:Lx2/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
