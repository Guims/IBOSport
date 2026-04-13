.class public final enum Lh4/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Lh4/d;

.field public static final enum q:Lh4/d;

.field public static final synthetic r:[Lh4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lh4/d;

    const-string v1, "CRASHLYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh4/d;->b:Lh4/d;

    new-instance v1, Lh4/d;

    const-string v2, "PERFORMANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh4/d;->q:Lh4/d;

    new-instance v2, Lh4/d;

    const-string v3, "MATT_SAYS_HI"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lh4/d;

    move-result-object v0

    sput-object v0, Lh4/d;->r:[Lh4/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh4/d;
    .locals 1

    const-class v0, Lh4/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh4/d;

    return-object p0
.end method

.method public static values()[Lh4/d;
    .locals 1

    sget-object v0, Lh4/d;->r:[Lh4/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh4/d;

    return-object v0
.end method
