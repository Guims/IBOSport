.class public final enum LI1/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:LI1/a;

.field public static final enum q:LI1/a;

.field public static final r:LI1/a;

.field public static final synthetic s:[LI1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LI1/a;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LI1/a;->b:LI1/a;

    new-instance v1, LI1/a;

    const-string v2, "PREFER_RGB_565"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LI1/a;->q:LI1/a;

    filled-new-array {v0, v1}, [LI1/a;

    move-result-object v1

    sput-object v1, LI1/a;->s:[LI1/a;

    sput-object v0, LI1/a;->r:LI1/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LI1/a;
    .locals 1

    const-class v0, LI1/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LI1/a;

    return-object p0
.end method

.method public static values()[LI1/a;
    .locals 1

    sget-object v0, LI1/a;->s:[LI1/a;

    invoke-virtual {v0}, [LI1/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LI1/a;

    return-object v0
.end method
