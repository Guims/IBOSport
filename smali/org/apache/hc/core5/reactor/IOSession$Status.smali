.class public final enum Lorg/apache/hc/core5/reactor/IOSession$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/reactor/IOSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/reactor/IOSession$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/reactor/IOSession$Status;

.field public static final enum ACTIVE:Lorg/apache/hc/core5/reactor/IOSession$Status;

.field public static final enum CLOSED:Lorg/apache/hc/core5/reactor/IOSession$Status;

.field public static final enum CLOSING:Lorg/apache/hc/core5/reactor/IOSession$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/reactor/IOSession$Status;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/reactor/IOSession$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->ACTIVE:Lorg/apache/hc/core5/reactor/IOSession$Status;

    new-instance v1, Lorg/apache/hc/core5/reactor/IOSession$Status;

    const-string v2, "CLOSING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/reactor/IOSession$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSING:Lorg/apache/hc/core5/reactor/IOSession$Status;

    new-instance v2, Lorg/apache/hc/core5/reactor/IOSession$Status;

    const-string v3, "CLOSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/reactor/IOSession$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSED:Lorg/apache/hc/core5/reactor/IOSession$Status;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/core5/reactor/IOSession$Status;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->$VALUES:[Lorg/apache/hc/core5/reactor/IOSession$Status;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/reactor/IOSession$Status;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/reactor/IOSession$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/reactor/IOSession$Status;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/reactor/IOSession$Status;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->$VALUES:[Lorg/apache/hc/core5/reactor/IOSession$Status;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/reactor/IOSession$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/reactor/IOSession$Status;

    return-object v0
.end method
