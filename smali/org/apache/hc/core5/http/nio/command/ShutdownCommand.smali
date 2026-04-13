.class public final Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/Command;


# static fields
.field public static final GRACEFUL:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

.field public static final GRACEFUL_IMMEDIATE_CALLBACK:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRACEFUL_NORMAL_CALLBACK:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMMEDIATE:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;


# instance fields
.field private final type:Lorg/apache/hc/core5/io/CloseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;-><init>(Lorg/apache/hc/core5/io/CloseMode;)V

    sput-object v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    new-instance v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;-><init>(Lorg/apache/hc/core5/io/CloseMode;)V

    sput-object v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->IMMEDIATE:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v0, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->createIOSessionCallback(Lorg/apache/hc/core5/reactor/Command$Priority;)Lorg/apache/hc/core5/function/Callback;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL_IMMEDIATE_CALLBACK:Lorg/apache/hc/core5/function/Callback;

    sget-object v0, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->createIOSessionCallback(Lorg/apache/hc/core5/reactor/Command$Priority;)Lorg/apache/hc/core5/function/Callback;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL_NORMAL_CALLBACK:Lorg/apache/hc/core5/function/Callback;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->type:Lorg/apache/hc/core5/io/CloseMode;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/reactor/Command$Priority;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->lambda$createIOSessionCallback$0(Lorg/apache/hc/core5/reactor/Command$Priority;Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method private static createIOSessionCallback(Lorg/apache/hc/core5/reactor/Command$Priority;)Lorg/apache/hc/core5/function/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/Command$Priority;",
            ")",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/nio/command/a;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/nio/command/a;-><init>(Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-object v0
.end method

.method private static synthetic lambda$createIOSessionCallback$0(Lorg/apache/hc/core5/reactor/Command$Priority;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    invoke-interface {p1, v0, p0}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getType()Lorg/apache/hc/core5/io/CloseMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->type:Lorg/apache/hc/core5/io/CloseMode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shutdown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->type:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
