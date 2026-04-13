.class public final enum LJ4/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:LJ4/a;

.field public static final synthetic q:[LJ4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LJ4/a;

    const-string v1, "NO_POLICY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJ4/a;->b:LJ4/a;

    new-instance v1, LJ4/a;

    const-string v2, "IDENTITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, LJ4/a;

    const-string v3, "CAMEL_CASE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, LJ4/a;

    const-string v4, "PASCAL_CASE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, LJ4/a;

    const-string v5, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [LJ4/a;

    move-result-object v0

    sput-object v0, LJ4/a;->q:[LJ4/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LJ4/a;
    .locals 1

    const-class v0, LJ4/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJ4/a;

    return-object p0
.end method

.method public static values()[LJ4/a;
    .locals 1

    sget-object v0, LJ4/a;->q:[LJ4/a;

    invoke-virtual {v0}, [LJ4/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJ4/a;

    return-object v0
.end method
