.class public final enum Lcom/google/android/gms/internal/play_billing/L;
.super Ljava/lang/Enum;


# static fields
.field public static final enum q:Lcom/google/android/gms/internal/play_billing/L;

.field public static final r:Lcom/google/android/gms/internal/play_billing/W;

.field public static final synthetic s:[Lcom/google/android/gms/internal/play_billing/L;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/google/android/gms/internal/play_billing/L;

    const/16 v1, -0x3e7

    const-string v2, "RESPONSE_CODE_UNSPECIFIED"

    const/4 v15, 0x0

    invoke-direct {v0, v2, v15, v1}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/L;->q:Lcom/google/android/gms/internal/play_billing/L;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/L;

    const/4 v2, -0x3

    const-string v3, "SERVICE_TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/google/android/gms/internal/play_billing/L;

    const/4 v3, -0x2

    const-string v5, "FEATURE_NOT_SUPPORTED"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/google/android/gms/internal/play_billing/L;

    const/4 v5, -0x1

    const-string v7, "SERVICE_DISCONNECTED"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v5}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/google/android/gms/internal/play_billing/L;

    const-string v7, "OK"

    const/4 v9, 0x4

    invoke-direct {v5, v7, v9, v15}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    move-object v7, v5

    new-instance v5, Lcom/google/android/gms/internal/play_billing/L;

    const-string v10, "USER_CANCELED"

    const/4 v11, 0x5

    invoke-direct {v5, v10, v11, v4}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/play_billing/L;

    const-string v12, "SERVICE_UNAVAILABLE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v13, v6}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    move v6, v4

    move-object v4, v7

    new-instance v7, Lcom/google/android/gms/internal/play_billing/L;

    const-string v12, "BILLING_UNAVAILABLE"

    const/4 v14, 0x7

    invoke-direct {v7, v12, v14, v8}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/play_billing/L;

    const-string v12, "ITEM_UNAVAILABLE"

    const/16 v15, 0x8

    invoke-direct {v8, v12, v15, v9}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/google/android/gms/internal/play_billing/L;

    const-string v12, "DEVELOPER_ERROR"

    const/16 v6, 0x9

    invoke-direct {v9, v12, v6, v11}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    move-object v6, v10

    new-instance v10, Lcom/google/android/gms/internal/play_billing/L;

    const-string v11, "ERROR"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/google/android/gms/internal/play_billing/L;

    const-string v12, "ITEM_ALREADY_OWNED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/google/android/gms/internal/play_billing/L;

    const-string v14, "ITEM_NOT_OWNED"

    const/16 v13, 0xc

    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/google/android/gms/internal/play_billing/L;

    const-string v15, "EXPIRED_OFFER_TOKEN"

    const/16 v13, 0xd

    move-object/from16 v18, v0

    const/16 v0, 0xb

    invoke-direct {v14, v15, v13, v0}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    move-object v13, v14

    new-instance v14, Lcom/google/android/gms/internal/play_billing/L;

    const-string v0, "NETWORK_ERROR"

    const/16 v15, 0xe

    move-object/from16 v17, v1

    const/16 v1, 0xc

    invoke-direct {v14, v0, v15, v1}, Lcom/google/android/gms/internal/play_billing/L;-><init>(Ljava/lang/String;II)V

    move-object/from16 v1, v17

    move-object/from16 v0, v18

    const/16 v16, 0x1

    filled-new-array/range {v0 .. v14}, [Lcom/google/android/gms/internal/play_billing/L;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/L;->s:[Lcom/google/android/gms/internal/play_billing/L;

    new-instance v0, LA/d;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA/d;-><init>(IB)V

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, LA/d;->r:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, LA/d;->q:I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/L;->values()[Lcom/google/android/gms/internal/play_billing/L;

    move-result-object v2

    array-length v3, v2

    move v15, v1

    :goto_0
    if-ge v15, v3, :cond_1

    aget-object v1, v2, v15

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/L;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, LA/d;->q:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    array-length v7, v6

    add-int/2addr v5, v5

    if-le v5, v7, :cond_0

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/w;->g(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, LA/d;->r:Ljava/lang/Object;

    :cond_0
    iget-object v5, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iget v6, v0, LA/d;->q:I

    add-int v7, v6, v6

    aput-object v4, v5, v7

    add-int/lit8 v7, v7, 0x1

    aput-object v1, v5, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, LA/d;->q:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/D;

    if-nez v1, :cond_3

    iget v1, v0, LA/d;->q:I

    iget-object v2, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/W;->a(I[Ljava/lang/Object;LA/d;)Lcom/google/android/gms/internal/play_billing/W;

    move-result-object v1

    iget-object v0, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/D;

    if-nez v0, :cond_2

    sput-object v1, Lcom/google/android/gms/internal/play_billing/L;->r:Lcom/google/android/gms/internal/play_billing/W;

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/D;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/D;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/L;->b:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/L;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/L;->s:[Lcom/google/android/gms/internal/play_billing/L;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/L;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/L;

    return-object v0
.end method
