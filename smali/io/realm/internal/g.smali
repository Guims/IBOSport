.class public final Lio/realm/internal/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/ref/ReferenceQueue;

.field public static final b:Lio/realm/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/realm/internal/g;->a:Ljava/lang/ref/ReferenceQueue;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/realm/internal/e;

    invoke-direct {v2, v0}, Lio/realm/internal/e;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lio/realm/internal/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/internal/g;->b:Lio/realm/internal/g;

    const-string v0, "RealmFinalizingDaemon"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/internal/h;)V
    .locals 2

    new-instance v0, Lio/realm/internal/NativeObjectReference;

    sget-object v1, Lio/realm/internal/g;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/internal/NativeObjectReference;-><init>(Lio/realm/internal/g;Lio/realm/internal/h;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
