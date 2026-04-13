.class public abstract Lcom/google/gson/internal/bind/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/gson/internal/bind/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/bind/a;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/gson/internal/bind/b;->a:Lcom/google/gson/internal/bind/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/Date;)Ljava/util/Date;
.end method
