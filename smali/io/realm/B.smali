.class public abstract Lio/realm/B;
.super Ljava/lang/Object;


# instance fields
.field public a:Lio/realm/internal/core/NativeRealmAny;


# direct methods
.method public constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/B;->a:Lio/realm/internal/core/NativeRealmAny;

    return-void
.end method


# virtual methods
.method public abstract a()Lio/realm/internal/core/NativeRealmAny;
.end method

.method public abstract b(Ljava/lang/Class;)Ljava/lang/Object;
.end method
