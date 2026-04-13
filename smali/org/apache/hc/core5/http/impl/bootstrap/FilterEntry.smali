.class final Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final existing:Ljava/lang/String;

.field final filterHandler:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field final position:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->position:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->existing:Ljava/lang/String;

    return-void
.end method
