.class public final enum Lg4/n;
.super Ljava/lang/Enum;

# interfaces
.implements LT3/f;


# static fields
.field public static final enum q:Lg4/n;

.field public static final synthetic r:[Lg4/n;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg4/n;

    const-string v1, "EVENT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg4/n;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lg4/n;

    const-string v2, "SESSION_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lg4/n;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg4/n;->q:Lg4/n;

    filled-new-array {v0, v1}, [Lg4/n;

    move-result-object v0

    sput-object v0, Lg4/n;->r:[Lg4/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg4/n;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg4/n;
    .locals 1

    const-class v0, Lg4/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg4/n;

    return-object p0
.end method

.method public static values()[Lg4/n;
    .locals 1

    sget-object v0, Lg4/n;->r:[Lg4/n;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg4/n;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lg4/n;->b:I

    return v0
.end method
