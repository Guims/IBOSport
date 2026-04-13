.class public final enum LE3/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:LE3/f;

.field public static final q:Ljava/util/HashMap;

.field public static final synthetic r:[LE3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, LE3/f;

    const-string v1, "X86_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, LE3/f;

    const-string v2, "X86_64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, LE3/f;

    const-string v3, "ARM_UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, LE3/f;

    const-string v4, "PPC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, LE3/f;

    const-string v5, "PPC64"

    const/4 v10, 0x4

    invoke-direct {v4, v5, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, LE3/f;

    const-string v6, "ARMV6"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, LE3/f;

    const-string v7, "ARMV7"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, LE3/f;

    const-string v8, "UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, LE3/f;->b:LE3/f;

    new-instance v8, LE3/f;

    const-string v9, "ARMV7S"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, LE3/f;

    const-string v11, "ARM64"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v9}, [LE3/f;

    move-result-object v1

    sput-object v1, LE3/f;->r:[LE3/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v10}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, LE3/f;->q:Ljava/util/HashMap;

    const-string v2, "armeabi-v7a"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "armeabi"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "arm64-v8a"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x86"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LE3/f;
    .locals 1

    const-class v0, LE3/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE3/f;

    return-object p0
.end method

.method public static values()[LE3/f;
    .locals 1

    sget-object v0, LE3/f;->r:[LE3/f;

    invoke-virtual {v0}, [LE3/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE3/f;

    return-object v0
.end method
