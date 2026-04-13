.class public final Lcom/google/android/gms/internal/play_billing/F;
.super Lcom/google/android/gms/internal/play_billing/k;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:Lcom/google/android/gms/internal/play_billing/F;

.field public static final r:Lcom/google/android/gms/internal/play_billing/F;


# instance fields
.field public final transient b:Lcom/google/android/gms/internal/play_billing/C;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/F;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/F;-><init>(Lcom/google/android/gms/internal/play_billing/C;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/F;->q:Lcom/google/android/gms/internal/play_billing/F;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/F;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/O;->r:Lcom/google/android/gms/internal/play_billing/O;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "at index "

    invoke-static {v2, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/C;->j(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/Q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/F;-><init>(Lcom/google/android/gms/internal/play_billing/C;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/F;->r:Lcom/google/android/gms/internal/play_billing/F;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/F;->b:Lcom/google/android/gms/internal/play_billing/C;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/android/gms/internal/play_billing/H;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/F;->b:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/X;->x:Lcom/google/android/gms/internal/play_billing/X;

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/Y;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/M;->r:Lcom/google/android/gms/internal/play_billing/M;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/play_billing/Y;-><init>(Lcom/google/android/gms/internal/play_billing/C;Ljava/util/Comparator;)V

    return-object v1
.end method
