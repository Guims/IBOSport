.class public final enum LI1/k;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:LI1/k;

.field public static final synthetic q:[LI1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LI1/k;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, LI1/k;

    const-string v2, "DISPLAY_P3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LI1/k;->b:LI1/k;

    filled-new-array {v0, v1}, [LI1/k;

    move-result-object v0

    sput-object v0, LI1/k;->q:[LI1/k;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LI1/k;
    .locals 1

    const-class v0, LI1/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LI1/k;

    return-object p0
.end method

.method public static values()[LI1/k;
    .locals 1

    sget-object v0, LI1/k;->q:[LI1/k;

    invoke-virtual {v0}, [LI1/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LI1/k;

    return-object v0
.end method
