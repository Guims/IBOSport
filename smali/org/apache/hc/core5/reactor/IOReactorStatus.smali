.class public final enum Lorg/apache/hc/core5/reactor/IOReactorStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/reactor/IOReactorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/reactor/IOReactorStatus;

.field public static final enum ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

.field public static final enum INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

.field public static final enum SHUTTING_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

.field public static final enum SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/reactor/IOReactorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;->INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    new-instance v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    const-string v2, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/reactor/IOReactorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    new-instance v2, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    const-string v3, "SHUTTING_DOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/reactor/IOReactorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUTTING_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    new-instance v3, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    const-string v4, "SHUT_DOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/reactor/IOReactorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;->$VALUES:[Lorg/apache/hc/core5/reactor/IOReactorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;->$VALUES:[Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/reactor/IOReactorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/reactor/IOReactorStatus;

    return-object v0
.end method
