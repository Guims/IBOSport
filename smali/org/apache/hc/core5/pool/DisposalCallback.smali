.class public interface abstract Lorg/apache/hc/core5/pool/DisposalCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/io/ModalCloseable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract execute(Lorg/apache/hc/core5/io/ModalCloseable;Lorg/apache/hc/core5/io/CloseMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/io/CloseMode;",
            ")V"
        }
    .end annotation
.end method
