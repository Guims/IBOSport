.class public final LH0/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:LH0/e;

.field public final b:LH0/e;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(LH0/e;LH0/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH0/f;->a:LH0/e;

    iput-object p2, p0, LH0/f;->b:LH0/e;

    iput p3, p0, LH0/f;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LH0/f;->d:Z

    return-void
.end method
