.class public final Lx2/c;
.super Ly2/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx2/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:[Lcom/google/android/gms/common/api/Scope;

.field public static final E:[Lu2/c;


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:Ljava/lang/String;

.field public final b:I

.field public final q:I

.field public final r:I

.field public s:Ljava/lang/String;

.field public t:Landroid/os/IBinder;

.field public u:[Lcom/google/android/gms/common/api/Scope;

.field public v:Landroid/os/Bundle;

.field public w:Landroid/accounts/Account;

.field public x:[Lu2/c;

.field public y:[Lu2/c;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lv2/h;-><init>(I)V

    sput-object v0, Lx2/c;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Lx2/c;->D:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Lu2/c;

    sput-object v0, Lx2/c;->E:[Lu2/c;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lu2/c;[Lu2/c;ZIZLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p6, :cond_0

    sget-object v1, Lx2/c;->D:[Lcom/google/android/gms/common/api/Scope;

    goto :goto_0

    :cond_0
    move-object v1, p6

    :goto_0
    if-nez p7, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object v2, p7

    :goto_1
    sget-object v3, Lx2/c;->E:[Lu2/c;

    if-nez p9, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object/from16 v4, p9

    :goto_2
    if-nez p10, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v3, p10

    :goto_3
    iput p1, p0, Lx2/c;->b:I

    iput p2, p0, Lx2/c;->q:I

    iput p3, p0, Lx2/c;->r:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Lx2/c;->s:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p4, p0, Lx2/c;->s:Ljava/lang/String;

    :goto_4
    const/4 p2, 0x2

    if-ge p1, p2, :cond_7

    const/4 p1, 0x0

    if-eqz p5, :cond_6

    sget p3, Lx2/a;->c:I

    const-string p3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p5, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v5, p4, Lx2/d;

    if-eqz v5, :cond_5

    check-cast p4, Lx2/d;

    goto :goto_5

    :cond_5
    new-instance p4, Lx2/y;

    const/4 v5, 0x0

    invoke-direct {p4, p5, p3, v5}, LG2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    check-cast p4, Lx2/y;

    invoke-virtual {p4}, LG2/a;->b()Landroid/os/Parcel;

    move-result-object p3

    invoke-virtual {p4, p3, p2}, LG2/a;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p2

    sget-object p3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LG2/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p3

    goto :goto_6

    :catch_0
    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p3, "Remote account accessor probably died"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_6
    :goto_6
    iput-object p1, p0, Lx2/c;->w:Landroid/accounts/Account;

    goto :goto_7

    :cond_7
    iput-object p5, p0, Lx2/c;->t:Landroid/os/IBinder;

    iput-object p8, p0, Lx2/c;->w:Landroid/accounts/Account;

    :goto_7
    iput-object v1, p0, Lx2/c;->u:[Lcom/google/android/gms/common/api/Scope;

    iput-object v2, p0, Lx2/c;->v:Landroid/os/Bundle;

    iput-object v4, p0, Lx2/c;->x:[Lu2/c;

    iput-object v3, p0, Lx2/c;->y:[Lu2/c;

    move/from16 p1, p11

    iput-boolean p1, p0, Lx2/c;->z:Z

    move/from16 p1, p12

    iput p1, p0, Lx2/c;->A:I

    move/from16 p1, p13

    iput-boolean p1, p0, Lx2/c;->B:Z

    move-object/from16 p1, p14

    iput-object p1, p0, Lx2/c;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lv2/h;->a(Lx2/c;Landroid/os/Parcel;I)V

    return-void
.end method
