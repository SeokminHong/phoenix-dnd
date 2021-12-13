import { ViewHook } from "phoenix_live_view";
import Sortable from "sortablejs";

const dragHook = {
  mounted() {
    const hook = this as ViewHook;
    const selector = `#${hook.el.id}`;

    document.querySelectorAll(".dropzone").forEach((dropzone) => {
      new Sortable(dropzone as HTMLElement, {
        animation: 0,
        delay: 50,
        delayOnTouchOnly: true,
        group: "shared",
        draggable: ".draggable",
        ghostClass: "sortable-ghost",
        onEnd: (e) => {
          hook.pushEventTo(selector, "dropped", {
            draggedId: e.item.id,
            dropzoneId: e.to.id,
            draggableIndex: e.newDraggableIndex,
          });
        },
      });
    });
  },
};

export default dragHook;
