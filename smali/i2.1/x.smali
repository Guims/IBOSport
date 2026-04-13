.class public final enum Li2/x;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Li2/x;

.field public static final synthetic q:[Li2/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li2/x;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Li2/x;

    const-string v2, "ANDROID_FIREBASE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li2/x;->b:Li2/x;

    filled-new-array {v0, v1}, [Li2/x;

    move-result-object v0

    sput-object v0, Li2/x;->q:[Li2/x;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li2/x;
    .locals 1

    const-class v0, Li2/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li2/x;

    return-object p0
.end method

.method public static values()[Li2/x;
    .locals 1

    sget-object v0, Li2/x;->q:[Li2/x;

    invoke-virtual {v0}, [Li2/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li2/x;

    return-object v0
.end method
