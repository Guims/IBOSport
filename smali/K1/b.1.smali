.class public final LK1/b;
.super Ljava/lang/ref/WeakReference;


# instance fields
.field public final a:LI1/f;

.field public final b:Z

.field public c:LK1/D;


# direct methods
.method public constructor <init>(LI1/f;LK1/w;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LK1/b;->a:LI1/f;

    iget-boolean p1, p2, LK1/w;->b:Z

    const/4 p2, 0x0

    iput-object p2, p0, LK1/b;->c:LK1/D;

    iput-boolean p1, p0, LK1/b;->b:Z

    return-void
.end method
