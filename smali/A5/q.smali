.class public final LA5/q;
.super Ljava/lang/RuntimeException;


# instance fields
.field public b:Ljava/io/IOException;

.field public final q:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, LA5/q;->q:Ljava/io/IOException;

    iput-object p1, p0, LA5/q;->b:Ljava/io/IOException;

    return-void
.end method
